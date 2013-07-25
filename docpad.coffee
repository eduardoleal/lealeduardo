# DocPad Configuration File
# http://docpad.org/docs/config

crypto = require('crypto')

# Define the DocPad Configuration
docpadConfig = {
	templateData:
		site:
			title: "Eduardo Leal"
			description: "Desenvolvedor web. São Paulo, Brasil."
			mail: "me@lealeduardo.com"
		links:
			linkedIn: "http://br.linkedin.com/pub/eduardo-leal/74/8b5/867"
			github:"http://github.com/eduardoleal"
			googlePlus: "https://plus.google.com/u/0/118008384881583412268"		
			twitter: "http://twitter.com/eduardo_leal_"

		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else "#{@site.title} - #{@site.description}"

		getGravatarUrl: -> 			
			md5hash1 = crypto.createHash('md5').update(@site.mail).digest("hex")
			"http://www.gravatar.com/avatar/#{md5hash1}?s=100"

}

# Export the DocPad Configuration
module.exports = docpadConfig