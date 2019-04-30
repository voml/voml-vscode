export const key_value: any = {
    patterns: [
        {
            name: 'invalid.illegal.noKey.arc',
            match: '(\\s*=.*)$',
        },
        {
            name: 'invalid.deprecated.noValue.arc',
            match: '(\\s*[A-Za-z_\\-][A-Za-z0-9_\\-]*\\s*=)(?=\\s*$)',
        },
        {
            //TODO: Split Nested Key
            begin: "\\s*([A-Za-z_-][\/A-Za-z0-9_-]*|\".+\"|'.+'|[0-9]+)\\s*(=|:)\\s*",
            beginCaptures: {
                1: {
                    name: 'entity.name.tag.arc',
                },
                2: {
                    name: 'punctuation.definition.keyValue.arc',
                },
            },
            end: '($|(?==)|\\,|\\s*(?=\\}))',
            patterns: [
                {
                    include: '#comment',
                },
                {
                    include: '#data',
                },
                {
                    include: '#illegal',
                },
            ],
        },
        {
            name: 'punctuation.definition.newKey.arc',
            match: '(?x)([*])',
        },
        {
            begin: '\\s*(?x)([&])\\s*',
            beginCaptures: {
                1: {
                    name: 'punctuation.definition.newData.arc',
                },
            },
            end: '($|(?==)|\\,|\\s*(?=\\}))',
            patterns: [
                {
                    include: '#comment',
                },
                {
                    include: '#data',
                },
                {
                    include: '#illegal',
                },
            ],
        },
    ],
}