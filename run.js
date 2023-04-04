const subProcess = require('child_process')
 const {
  performance
} = require('perf_hooks');
subProcess.exec('wat2wasm.exe  program.wat ', (err, stdout, stderr) => {
require("webassembly")
  .load("program.wasm")
  .then(module => {
    let a = performance.now();
    let r = module.exports.main(5,6);
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
