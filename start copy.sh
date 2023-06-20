#!/bin/sh

# Remove old files to avoid conflicts
rm -rf /src/.svelte-kit /src/node_modules /src/.npm-store /.npm-store
npm config set store-dir /.npm-store
npm config set node-linker hoisted
npm config set symlink false
npm i
npm run dev