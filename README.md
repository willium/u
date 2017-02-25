# u
CLI for opening URLs relevant to the current directory


## How to use

#### Navigate to a URL
`u [shortcut]`

#### add a URL
`u -s [SHORTCUT] -u [URL]`

#### list available URLs
`u -l`

#### remove a URL
`u -r [SHORTCUT]`

#### manually
If you want add links manually, put a `u.yaml` file in an directory with key value associations between shortcuts and urls. 
```
shortcut: https://example.com/
```
See this repo's [u.yaml](u.yaml)

## Installation
[Download the binary] then add it to your path. That easy.
