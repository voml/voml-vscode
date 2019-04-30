% 
name = 'vscode-arc'
displayName = 'Arc Language Support'
description = 'Highlight and formatter for Arc Readable Configiration'
publisher = 'aster'
version = '0.1.2'
icon = 'logo.png'
engines/vscode = '^1.8.0'


<categories>
& 'Programming Languages'
& 'Formatters'


(repository)
type = 'git'
url = 'https =//github.com/GalAster/vscode-arc.git'


(scripts)
postinstall = 'node ./node_modules/vscode/bin/install && tsc'
build = 'yarn lint && ts-node syntax/build.ts'
pack = 'yarn build && vsce package'
lint = 'tslint **/*.ts --fix'


(dependencies)
vscode = '^1.1.33'


(devDependencies)
'@types/node' = '^11.13.6'


<contributes/languages>
* id = 'arc'
  aliases = ['ARC'],
  extensions = ['.arc']
  filenames = []
  mimetypes = ['text/x-arc']
  configuration = './syntax/arc.configuration.json'


<contributes/grammars>
* language = 'arc'
  scopeName = 'source.arc'
  path = './syntax/arc.tmLanguage.json'


(__metadata)
id = '6267dad2-7d52-462a-a1ef-7e3da7378a7d'
publisherDisplayName = 'Aster'
publisherId = '3406b78c-f287-4619-8d82-7c97998693e3'