/**
 * The GitHub side of the feedback endpoint.
 *
 * The discussions are written with the installation token of a GitHub App, so
 * the feedback is stored as the app (`solar-icons-docs`) and not as a user.
 */

export interface GraphqlClient {
    graphql<T>(query: string, variables?: Record<string, unknown>): Promise<T>
}

const API = 'https://api.github.com'

function base64UrlEncode(bytes: Uint8Array): string {
    let binary = ''
    for (const byte of bytes) binary += String.fromCharCode(byte)
    return btoa(binary).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '')
}

function derLength(length: number): number[] {
    if (length < 0x80) return [length]
    const bytes: number[] = []
    let value = length
    while (value > 0) {
        bytes.unshift(value & 0xff)
        value >>>= 8
    }
    return [0x80 | bytes.length, ...bytes]
}

function der(tag: number, content: number[] | Uint8Array): number[] {
    const body = Array.from(content)
    return [tag, ...derLength(body.length), ...body]
}

function toBuffer(values: number[]): ArrayBuffer {
    const buffer = new ArrayBuffer(values.length)
    new Uint8Array(buffer).set(values)
    return buffer
}

/**
 * Wraps a PKCS#1 key into the PKCS#8 envelope, which is the only format
 * the Web Crypto API of the runtime accepts.
 */
function pkcs1ToPkcs8(pkcs1: ArrayBuffer): ArrayBuffer {
    const algorithm = der(0x30, [
        ...der(0x06, [0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01, 0x01]),
        ...der(0x05, []),
    ])
    return toBuffer(
        der(0x30, [
            ...der(0x02, [0x00]),
            ...algorithm,
            ...der(0x04, Array.from(new Uint8Array(pkcs1))),
        ])
    )
}

function importPrivateKey(pem: string): Promise<CryptoKey> {
    const base64 = pem.replace(/-----[^-]+-----/g, '').replace(/\s+/g, '')
    const bytes = toBuffer(Array.from(atob(base64), character => character.charCodeAt(0)))
    const isPkcs1 = pem.includes('BEGIN RSA PRIVATE KEY')
    const pkcs8 = isPkcs1 ? pkcs1ToPkcs8(bytes) : bytes

    return crypto.subtle.importKey(
        'pkcs8',
        pkcs8,
        { name: 'RSASSA-PKCS1-v1_5', hash: 'SHA-256' },
        false,
        ['sign']
    )
}

/** Signs the JSON Web Token that identifies the app to GitHub. */
export async function createAppJwt(appId: string, privateKeyPem: string): Promise<string> {
    const key = await importPrivateKey(privateKeyPem)
    const issuedAt = Math.floor(Date.now() / 1000)
    const header = base64UrlEncode(
        new TextEncoder().encode(JSON.stringify({ alg: 'RS256', typ: 'JWT' }))
    )
    const payload = base64UrlEncode(
        new TextEncoder().encode(
            JSON.stringify({ iat: issuedAt - 60, exp: issuedAt + 540, iss: appId })
        )
    )
    const signature = await crypto.subtle.sign(
        'RSASSA-PKCS1-v1_5',
        key,
        new TextEncoder().encode(`${header}.${payload}`)
    )
    return `${header}.${payload}.${base64UrlEncode(new Uint8Array(signature))}`
}

/** Asks GitHub for the installation token of the repository. */
export async function getInstallationToken(jwt: string, owner: string): Promise<string> {
    const installations = await fetch(`${API}/app/installations`, {
        headers: {
            authorization: `Bearer ${jwt}`,
            accept: 'application/vnd.github+json',
            'x-github-api-version': '2022-11-28',
        },
    })
    if (!installations.ok) {
        throw new Error(`GitHub refused the installations list (${installations.status})`)
    }

    const list = (await installations.json()) as { id: number; account?: { login: string } }[]
    const installation = list.find(
        item => item.account?.login?.toLowerCase() === owner.toLowerCase()
    )
    if (!installation) throw new Error(`No installation of the app for ${owner}`)

    const response = await fetch(`${API}/app/installations/${installation.id}/access_tokens`, {
        method: 'POST',
        headers: {
            authorization: `Bearer ${jwt}`,
            accept: 'application/vnd.github+json',
            'x-github-api-version': '2022-11-28',
        },
    })
    if (!response.ok) {
        throw new Error(`GitHub refused the access token (${response.status})`)
    }

    const { token } = (await response.json()) as { token: string }
    return token
}

/** A GraphQL client that talks to GitHub with the given token. */
export function createGraphqlClient(token: string): GraphqlClient {
    return {
        async graphql<T>(query: string, variables: Record<string, unknown> = {}): Promise<T> {
            const response = await fetch(`${API}/graphql`, {
                method: 'POST',
                headers: {
                    authorization: `Bearer ${token}`,
                    accept: 'application/vnd.github+json',
                    'content-type': 'application/json',
                    'x-github-api-version': '2022-11-28',
                },
                body: JSON.stringify({ query, variables }),
            })
            if (!response.ok) {
                throw new Error(`GitHub refused the request (${response.status})`)
            }

            const payload = (await response.json()) as {
                data?: T
                errors?: { message: string }[]
            }
            if (payload.errors?.length) {
                throw new Error(`GitHub returned an error: ${payload.errors[0]?.message}`)
            }
            if (payload.data === undefined) throw new Error('GitHub returned no data')

            return payload.data
        },
    }
}
