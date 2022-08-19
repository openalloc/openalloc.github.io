
# OpenAlloc Project Website

For authoring and deploying the website for the OpenAlloc Project,
presently hosted at [openalloc.github.io](https://openalloc.github.io).

## Web Framework

It uses Sundell’s ‘Publish’ framework for generating static websites.

To install using Homebrew:

```bash
$ brew install publish
```

## The ‘author’ branch

All modification of source should be done on the ‘author’ branch.

To switch to this branch...

```bash
$ git checkout author
```

It is NOT necessary to switch to the ‘main’ branch for testing or
deploying to the website.

## Testing locally

```
[author] $ publish generate
[author] $ publish run
```

Load the site on `localhost` port 8000 for testing and review.

## Deploying to website

To deploy, push changes to the ‘author’ branch, regenerate the html to the
Output directory, and run the deploy command. It will push the contents of
Output to the ‘main’ branch.

```
[author] $ rm -rf Output
[author] $ git add .
[author] $ git commit -m "latest changes"
[author] $ publish generate
[author] $ publish deploy
```

## License

Copyright 2021-2022 OpenAlloc LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may
not use this file except in compliance with the License. You may obtain
a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations
under the License.

## Contributing

Contributions are welcome. You are encouraged to submit pull requests to
fix bugs, improve documentation, or offer new features. 
