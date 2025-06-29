# SobSob
A wildcharm inspired color scheme for nvim
## Examples
<details>
![Rust Example](examples/Rust.png)
<summary>more examples</summary>
![Js-Ts Example](examples/Js.png)
![C Example](examples/C.png)
![Hypr Example](examples/Hypr.png)
</details>
## Installation 
### For lazy
```lua
require("lazy").setup({
    "Fasamii/sobsob.nvim",
    priority = 1000,
    lazy = false,
    opts = {},
})
```
## Configuration
you can overwrite color pallet:
```lua
opts = {
    cp = {
        red = "#00ff00",
    }
}

```
or overwrite highlight groups:
```lua
opts = {
    hi = {
        Normal = { bg = "#ff00ff", fg = "#000000" }
    }
}
```
