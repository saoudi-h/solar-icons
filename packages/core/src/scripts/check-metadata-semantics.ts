import fs from 'node:fs'
import path from 'node:path'

import pc from 'picocolors'

type Description = {
    name: string
    categoryTags: string[]
    tags: string[]
}

const DESCRIPTIONS_PATH = path.resolve(import.meta.dirname, '../metadata-descriptions.json')

/**
 * This is a deliberately conservative regression guard for manually reviewed findings.
 * It does not try to infer whether every tag is relevant. New semantic findings belong here
 * after a human review, while the catalogue itself remains hand-curated.
 */
const FORBIDDEN_TAGS_BY_ICON: Record<string, readonly string[]> = {
    'alt-arrow-down': ['checkmark'],
    'chat-round-dots': ['dialogue icon'],
    'chat-square-code': ['code-chat-icon'],
    'chat-square': ['message icon', 'communication symbol'],
    'clipboard-heart': ['check'],
    clipboard: ['check'],
    'clipboard-remove': ['check', 'checklist-cancel'],
    'clipboard-check': ['checklist', 'task-list'],
    'clipboard-text': ['check'],
    'clipboard-list': ['check'],
    dislike: ['thumbs-up', 'good', 'agree', 'yes', 'upvote', 'approve', 'down arrow'],
    document: ['equalize', 'balance'],
    'trash-bin-minimalistic-2': ['pot', 'cooking-pot'],
    'music-note-4': ['musicalnotation', 'instrumentalguide'],
    volume: ['speakernois', 'speakernoise', 'soundnoisy'],
    'airbuds-case': ['earcase', 'wirelesscarf', 'portableaudio'],
    projector: ['screen-projecter'],
    football: ['footbal'],
    ghost: ['skeeter'],
    'speedometer-middle': ['middleometer', 'fast', 'gear-circle'],
    subtitles: ['card', 'chip card', 'credit card', 'payment method'],
    delivery: ['cart', 'shopping'],
    export: ['smiley', 'laughing-face'],
    'maximize-square-2': ['refresh-icon'],
    'minimize-square-3': ['arrowdown', 'arrowdock'],
    'key-minimalistic-2': ['search key', 'minimalist search tool', 'simple magnifying glass'],
    'multiple-forward-left': ['navigation right'],
    'round-double-alt-arrow-down': ['two-step action icon'],
    'map-point-wave': ['wave icon'],
    'safe-circle': ['circle-check', 'validation-mark'],
    'cash-out': ['deposit'],
    boombox: ['luggage'],
    devices: ['database', 'documentation'],
    'cloud-plus': ['digital storage'],
    wind: ['airplane tail'],
    'tennis-2': ['golf'],
    rugby: ['football', 'ruggery ball', 'american-football'],
    'conditioner-2': ['bottle', 'haircare'],
    'star-angle': ['astromech', 'robotic'],
    sidebar: ['bookshelf', 'file cabinet', 'library'],
    'map-arrow-right': ['play-button'],
    route: ['rewind', 'reverse route'],
    record: ['data', 'database', 'save', 'red-button'],
    'record-audio-circle': ['microphone', 'recording device', 'save', 'red-button'],
    'vinyl-record': ['save', 'capture', 'red-button'],
    'upload-track-2': ['upload-video', 'record-audio'],
    rocket: ['ship'],
    microphone: ['microphone icon'],
    camera: ['camera icon', 'photography symbol'],
    'microphone-2': ['speaker'],
    'microphone-3': ['speaker'],
    'soundwave-square': ['stop', 'power-off'],
    'soundwave-circle': ['power', 'pause'],
    'volume-cross': ['mute-icon'],
    stop: ['traffic', 'sign'],
    pause: ['play', 'start', 'stop'],
    'to-pip': ['settings', 'icons', 'tool', 'gear'],
    pip: ['fountain pen', 'inkwell'],
    'flashlight-on': ['lightbulb'],
    'end-call': ['hands-up', 'stop-sign'],
    'speedometer-max': ['sightseeing', 'compass', 'slow', 'low'],
    'speedometer-low': ['fast'],
    'transmission-circle': ['helicopter', 'aircraft'],
    suspension: ['gearbox'],
    'shock-absorber': ['engine-lift-supporter'],
    'user-plus': ['user edit', 'profile settings'],
    'shield-keyhole-minimalistic': ['search'],
    'list-cross-minimalistic': ['iconography', 'signifier'],
    'bookmark-opened': ['eye', 'goggle'],
    'colour-tuning': ['equalizer', 'audio'],
    'plus-minus': ['crossing-out-symbols', 'deletion-symbol', 'addition-and-deletion-icon'],
    'bill-2': ['balance', 'scale'],
    'list-check-minimalistic': ['icon'],
    'list-arrow-down': ['icon'],
    'text-selection': ['box-tools'],
    bluetooth: ['icon'],
    'menu-dots': ['icon'],
    'password-minimalistic-input': ['icon'],
    flag: ['signal', 'connectivity'],
    city: ['factory'],
    bacteria: ['microscope'],
    men: ['Gender Icon'],
    women: ['Gender Icon'],
    'planet-2': ['satellite', 'spacecraft'],
    'minimalistic-magnifier-zoom-in': ['icon search plus'],
    'calendar-date': ['Date icon'],
    'hashtag-chat': ['chat icon'],
    'card-search': ['CreditCard', 'FinancialSearch'],
    'archive-minimalistic': ['folder', 'task-list'],
    'chart-square': ['pause', 'stop'],
    'cart-large-3': ['stroller'],
    'bag-smile': ['suitcase', 'travel-bag'],
    'cart-plus': ['shopping-bag'],
    pipette: ['syringe', 'medicine dispenser'],
    'radial-blur': ['disk', 'icon'],
    'square-alt-arrow-left': ['recycle-bin', 'left-menu'],
    'square-arrow-left-down': ['left-to-right arrow within rectangle'],
    'round-transfer-diagonal': ['circle-cross', 'stop-sign'],
    'round-double-alt-arrow-up': ['double-forward'],
    'circle-top-up': ['arrow-circular', 'refresh-arrow'],
    'circle-top-down': ['clock', 'time'],
    'undo-right-round-square': ['reverse-left-arrow', 'undo-move', 'revert-change', 'revert'],
    'undo-right': ['reverse', 'rewind', 'backwards', 'cancel'],
    'undo-right-square': ['undo', 'revert', 'rewind'],
    'undo-right-round': ['undo arrow'],
    'undo-left-square': ['backspace', 'cancel'],
    'undo-left': ['cancel'],
    'undo-left-round': ['cancel'],
    'undo-left-round-square': ['cancel'],
    'login-2': ['exit'],
    'login-3': ['download', 'share', 'arrow-left'],
    'screen-share': ['upload-file', 'data-transfer'],
    translation: ['language', 'locale', 'international', 'globe', 'switch', 'multilingual'],
    'translation-2': ['translation', 'translator'],
    revote: ['checkmark circle', 'verification mark'],
    feed: ['file', 'folder'],
    'remote-controller-2': ['speaker', 'audio'],
    command: ['crosshair', 'target', 'apple', 'loop'],
    'widget-4': ['eye', 'monitor'],
    'full-screen-circle': ['full-screen mode icon'],
    'notification-unread-lines': ['document'],
    'star-2': ['satellite'],
    'planet-4': ['saturn', 'ringed planet', 'mars', 'venus', 'crater'],
    'star-rings': ['atomic', 'atomistic', 'vortex'],
    'folder-error': ['delete-folder', 'delete'],
    'remove-folder': ['trash-icon'],
    'folder-favorite-bookmark': ['favourited file'],
    'expressionless-circle': ['smiley-circle'],
    'expressionless-square': ['expressionless icon'],
    'sleeping-square': ['dreamer-icon'],
    'sticker-square': ['document', 'note'],
    'list-heart': ['love checklist'],
    'square-transfer-vertical': ['Flip Icons'],
    'magnifier-zoom-out': ['decrease zoom icon'],
    'list-arrow-up': ['List Icon'],
    'list-up-minimalistic': ['menu-symbol'],
    'list-arrow-down-minimalistic': ['list symbol'],
    'add-square': ['input icon'],
    'home-2': ['house icon'],
    'call-cancel-rounded': ['call-cancel-icon'],
    'sidebar-minimalistic': ['Icon for Menu'],
    'bug-minimalistic': ['simplified bug symbol'],
    'widget-3': ['utility icons'],
    'text-italic-square': ['Text symbol'],
    'flip-vertical': ['flip icon'],
    'heart-shine': ['celebratory symbol'],
    'minimize-square': ['move icon'],
    'maximize-square-minimalistic': ['arrow-icon'],
    'notification-remove': ['remove-icon'],
    'bell-ring': ['bells icon'],
    'bell-off': ['silence-icon'],
    'key-minimalistic': ['iconic'],
    'shield-user': ['Shield Icon'],
    'user-plus-rounded': ['new-user-icon'],
    'hand-stars': ['help-icon'],
    'heart-angle': ['favorite', 'passion', 'like'],
    'heart-crack': ['favorite', 'passion', 'like'],
    magnet: ['retractable', 'suspension'],
    skirt: ['underwear garment'],
    syringe: ['blood'],
    bone: ['dog bone', 'veterinary symbol'],
    'test-tube': ['blood'],
    'dropper-minimalistic': ['blood-dropper', 'medical-device'],
    'lock-unlocked': ['secure', 'safe', 'private', 'protect'],
    'lock-password-unlocked': ['password-secured', 'secure', 'safe', 'private', 'protect'],
    'lock-keyhole-unlocked': ['secure', 'safe', 'private', 'protect'],
    'lock-keyhole-minimalistic-unlocked': ['secure', 'safe', 'private', 'protect'],
    suitcase: ['environment', 'outdoor', 'plant', 'ecology', 'organic'],
    'suitcase-lines': ['environment', 'outdoor', 'plant', 'ecology', 'organic'],
    'suitcase-tag': ['environment', 'outdoor', 'plant', 'ecology', 'organic'],
    'volume-knob': ['home', 'furniture', 'house', 'interior', 'living', 'appliances'],
    'body-shape-minimalistic': ['fitness', 'exercise', 'activity', 'game', 'athletics', 'workout'],
    'body-shape': ['fitness', 'exercise', 'activity', 'game', 'athletics', 'workout'],
    'eye-closed': ['show', 'watch'],
    'user-minus': ['minimize user'],
    scooter: ['motorcycle', 'moped', 'vespa'],
    'kick-scooter': ['moped', 'motorcycle', 'vespa'],
}

const FORBIDDEN_CATEGORY_TAGS_BY_ICON: Record<string, readonly string[]> = {
    'heart-angle': ['favorite', 'award', 'achievement', 'rating', 'appreciation'],
    'heart-crack': ['favorite', 'award', 'achievement', 'rating', 'appreciation'],
    'bomb-minimalistic': ['protection', 'safe', 'guard', 'defend', 'private', 'lock'],
    'bomb-emoji': ['protection', 'safe', 'guard', 'defend', 'private', 'lock'],
    bomb: ['protection', 'safe', 'guard', 'defend', 'private', 'lock'],
    'siren-rounded': ['protection', 'safe', 'guard', 'defend', 'private', 'lock'],
    siren: ['protection', 'safe', 'guard', 'defend', 'private', 'lock'],
    eye: ['protection', 'safe', 'guard', 'defend', 'private', 'lock'],
    'lock-unlocked': ['protection', 'safe', 'guard', 'defend', 'private'],
    'lock-password-unlocked': ['protection', 'safe', 'guard', 'defend', 'private'],
    'lock-keyhole-unlocked': ['protection', 'safe', 'guard', 'defend', 'private'],
    'lock-keyhole-minimalistic-unlocked': ['protection', 'safe', 'guard', 'defend', 'private'],
    'graph-down': ['growth'],
    'diagram-down': ['growth'],
    'course-down': ['growth'],
    'graph-down-new': ['growth'],
}

const FORBIDDEN_GLOBAL_TAGS = new Set([
    'footbal',
    'middleometer',
    'screen-projecter',
    'speakernois',
    'speakernoise',
    'instrumentalguide',
    'wirelesscarf',
    'fiba',
    'radioreceiver',
    'portableradio',
    'waggon',
    'hangar hook',
    'leftdown',
    'downleft',
    'icon-arrow-down-circle',
    'icon-sort',
    'clockround',
    'arrow-reflex',
    'minimal-download',
    'network-ban',
    'creditcard',
    'financialsearch',
])

const normalise = (tag: string) => tag.trim().toLowerCase()

const main = () => {
    const descriptions = JSON.parse(fs.readFileSync(DESCRIPTIONS_PATH, 'utf8')) as Description[]
    const errors: string[] = []

    for (const description of descriptions) {
        for (const [field, tags] of [
            ['categoryTags', description.categoryTags],
            ['tags', description.tags],
        ] as const) {
            const seenTags = new Set<string>()
            for (const tag of tags) {
                const normalised = normalise(tag)
                if (tag !== tag.trim() || tag.includes('_')) {
                    errors.push(
                        `${description.name}.${field}: malformed tag ${JSON.stringify(tag)}`
                    )
                }
                if (seenTags.has(normalised)) {
                    errors.push(
                        `${description.name}.${field}: duplicate tag ${JSON.stringify(tag)}`
                    )
                }
                seenTags.add(normalised)
                if (FORBIDDEN_GLOBAL_TAGS.has(normalised)) {
                    errors.push(
                        `${description.name}.${field}: known malformed tag ${JSON.stringify(tag)}`
                    )
                }
            }
        }

        const forbidden = FORBIDDEN_TAGS_BY_ICON[description.name] ?? []
        for (const tag of forbidden) {
            if (description.tags.some(value => normalise(value) === normalise(tag))) {
                errors.push(`${description.name}: forbidden semantic tag ${JSON.stringify(tag)}`)
            }
        }

        const forbiddenCategoryTags = FORBIDDEN_CATEGORY_TAGS_BY_ICON[description.name] ?? []
        for (const tag of forbiddenCategoryTags) {
            if (description.categoryTags.some(value => normalise(value) === normalise(tag))) {
                errors.push(`${description.name}: forbidden category tag ${JSON.stringify(tag)}`)
            }
        }
    }

    if (errors.length > 0) {
        console.log(
            pc.red(`Metadata semantic regression check failed (${errors.length} error(s)).`)
        )
        for (const error of errors) console.log(pc.red(`  - ${error}`))
        process.exit(1)
    }

    console.log(
        pc.green(`Metadata semantic regression check passed (${descriptions.length} entries).`)
    )
}

main()
