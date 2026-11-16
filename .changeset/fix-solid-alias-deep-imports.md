---
'@solar-icons/solid': patch
---

Fix deep imports of deprecated alias icons such as `bold/chat-square-2` and `dynamic/chat-square-2`, which failed at runtime because their `.mjs` files were omitted from the build output.
