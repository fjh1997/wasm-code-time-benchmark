const subProcess = require('child_process')
 const {
  performance
} = require('perf_hooks');
subProcess.exec('wat2wasm.exe  program.wat ', (err, stdout, stderr) => {
const fs = require('fs');
const wasmBuffer = fs.readFileSync('program.wasm');
	WebAssembly.instantiate(wasmBuffer).then(module => {
  // Exported function live under instance.exports
	//const memory = module.instance.exports.memory;
    // store 30 at the beginning of memory
	const encoder = new TextEncoder();
	const encoded = encoder.encode('mio');
//	const buffer = new Uint8Array(memory.buffer)
	//buffer.set(encoded)
    let a = performance.now();
    let r = module.instance.exports.main();
    let b = performance.now();
	console.log(r);
    console.log(b-a);	
  });
  if (err) {
    console.error(err)
    process.exit(1)
  } else {
    console.log(`The stdout Buffer from shell: ${stdout.toString()}`)
    console.log(`The stderr Buffer from shell: ${stderr.toString()}`)
  }
})

