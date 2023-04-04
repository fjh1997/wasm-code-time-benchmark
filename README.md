# wasm-code-time-benchmark
Benchmark for execution time for every webassembly instruction
wat2wasm.exe from [wabt](https://github.com/WebAssembly/wabt)
and patch for [webassembly lib](https://github.com/dcodeIO/webassembly)

```
From 1a5c00deb41f32456231895e0073e59546965ed2 Mon Sep 17 00:00:00 2001
From: FunnyBiu <549308442@qq.com>
Date: Wed, 5 Apr 2023 01:08:00 +0800
Subject: [PATCH] Update index.js

---
 src/index.js | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/index.js b/src/index.js
index dfa00f8..67140de 100644
--- a/src/index.js
+++ b/src/index.js
@@ -206,7 +206,7 @@ function load(file, options) {
 
     env._grow = grow;
 
-    return (typeof fetch === "function" && fetch || fetch_node)(file)
+    return fetch_node(file)
         .then(result => result.arrayBuffer())
         .then(buffer => WebAssembly.instantiate(buffer, { env: env }))
         .then(module => {

```
