export interface FooterLink {
    label: string
    url: string
    icon?: React.ReactElement
    external?: boolean
}

export interface FooterSection {
    title: string
    links: FooterLink[]
}

export interface FooterProps {
    bottomText: string
    sections: FooterSection[]
}
