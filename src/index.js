const fs = require('fs')

function injectTitle() {
  return `<h1>Hello Kubernetes</h1>`
}

function injectSubTitle() {
  if (process.env.SUB_TITLE) {
    return `<h2>${process.env.SUB_TITLE}</h2>`
  }

  return ''
}

function injectBodyFromFile() {
  if (process.env.BODY_FILENAME == null) {
    return ''
  }

  return fs.existsSync(process.env.BODY_FILENAME) ? fs.readFileSync(process.env.BODY_FILENAME, 'utf-8') : ''
}

function injectEnvironmentVariables() {
  const template = `<code><pre>${JSON.stringify(process.env, null, 2)}</pre></code>`

  return template
}

module.exports = (req, res) => {
  const template = `
    ${ injectTitle() }
    ${ injectSubTitle() }
    ${ injectBodyFromFile() }
    ${ injectEnvironmentVariables() }
  `

  res.end(template)
}
