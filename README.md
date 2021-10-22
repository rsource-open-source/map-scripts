# map-scripts
Collection of Roblox Lua scripts for making maps for the Roblox Bhop / Surf game. You can submit scripts to this repository.

## Discussions existence
For GitHub users, we have [discussions](https://github.com/rsource-open-source/map-scripts/discussions) enabled! If you don't know, it's basically a forum based around this repository!

## How do I submit my script?
There are a list of ways you can do this, but out of these, do what is the easiest for you!
<details>
<summary>Submit via Discord Dms!</summary>
<br>
Join the rsource discord: https://rsource.rqft.space/
</details>

<details>
<summary>Pull Request (GitHub account required + complicated for new users)</summary>
<br>
Read on how to fork and make pull request.

https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/about-forks

https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request

### Why would I do this?
So you can appear on the contributors list.
</details>

<details>
<summary>Discussions! (GitHub account required + not complicated at all!)</summary>
<br>
You can submit in the IDKHTPR channel!

https://github.com/rsource-open-source/map-scripts/discussions/categories/idkhtpr-submit-scripts-here
</details>

## [roblox-ts](https://github.com/roblox-ts/roblox-ts) & [Luau](https://luau-lang.org/) Support
Some developers might choose to use a roblox-ts environment and use the distributed/compiled lua. This is fully supported as you can submit a [PR](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) like the following:
```
*/
└── {map_name}/
    ├── src/
    │   └── *.ts
    └── dist/
        └── *.lua
```
Where `*` is any of the top directory folders except `.github`.

## Use of [StyLua](https://github.com/JohnnyMorganz/StyLua), [Prettier](https://github.com/prettier/prettier), and the GitHub Actions: [stylua-action](https://github.com/JohnnyMorganz/stylua-action), [prettier-action](https://github.com/creyD/prettier_action)
When a commit is pushed (main branch and fork branch) or a pull request is made, StyLua and Prettier will automatically run and format commited code. If you would like to use this as you work on the PR, open a pull request draft, that's it! GitHub actions will check the forked repo on every push. See the commits messages to see how you can disabled these github action checks and pushing them to the branch.
