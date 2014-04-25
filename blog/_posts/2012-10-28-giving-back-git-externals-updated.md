---
layout: post
---

I just went over to *GitHub* and found my repositories piling up dust and dirt.
It has been months since I worked on any of my small open source projects so I figured "it's a good day to give back".

### Git Externals

There is one open source project I have that it has proven to be useful, is a Git "extension"
that helps including external repositories to our repositories without having to worry about keeping it up to date.

Details can be found here: [http://danielcestari.com/git-external/](http://danielcestari.com/git-external/)

### Hands On: Refactoring

Today I made a few changes on the code-base of Git Externals. The project started as just a binary script file that
helps cloning external dependencies for a Git repository. Now that is working and growing in features the script file
is just not practical.

So I moved all the code to a `GitExternal` class that does all the work. This enabled me to add Unit Tests (or maybe
"Test", since is just one for now) that should will help add new features without breaking existing ones.

You can review the changes on: [https://github.com/dcestari/git-external](https://github.com/dcestari/git-external)
