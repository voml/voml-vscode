export const cite: any = [
    {
        match: '([$])([A-Za-z_-][/A-Za-z0-9_-]*)',
        captures: {
            1: {
                //name: 'punctuation.definition.newData.arc',
                name: 'punctuation.definition.cite.arc',
            },
            2: {
                name: 'support.function.cite.arc',
            },
        },
    },
]