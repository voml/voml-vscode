export const comment: any = {
    match: '\\s*((%).*)$',
    captures: {
        1: {
            name: 'comment.line.number-sign.arc',
        },
        2: {
            name: 'punctuation.definition.comment.arc',
        },
    },
}

export const comment_block: any = {
    name: 'comment.block.arc',
    begin: '(^|\\G)(\\s*)(%{3,})\\s*(?=([^%]*)?$)',
    end: '(^|\\G)(\\2|\\s{0,3})(\\3)\\s*$',
    beginCaptures: {
        3: {
            name: 'punctuation.definition.comment',
        },
        4: {
            name: 'punctuation.definition.comment',
        },
    },
    endCaptures: {
        3: {
            name: 'punctuation.definition.comment',
        },
    },
    patterns: [
        {
            include: 'text.html.markdown',
        },
    ],
}
