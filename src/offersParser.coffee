CommerceMlParser = require './parser'
_ = require 'underscore'

class OffersParser extends CommerceMlParser
	getCollectRules : ->
		return {
			commercialInfo :
				start : ['КоммерческаяИнформация']

			packageOffers :
				start : ['КоммерческаяИнформация', 'ПакетПредложений']
				include : [
					['КоммерческаяИнформация', 'ПакетПредложений', 'Ид']
					['КоммерческаяИнформация', 'ПакетПредложений', 'Наименование']
					['КоммерческаяИнформация', 'ПакетПредложений', 'ИдКаталога']
					['КоммерческаяИнформация', 'ПакетПредложений', 'ИдКлассификатора']
					['КоммерческаяИнформация', 'ПакетПредложений', 'Владелец']
					['КоммерческаяИнформация', 'ПакетПредложений', 'ТипыЦен']
				]

			offer :
				start : ['КоммерческаяИнформация', 'ПакетПредложений', 'Предложения', 'Предложение']
				include : [
					['КоммерческаяИнформация', 'ПакетПредложений', 'Предложения', 'Предложение']
				]
		}

module.exports = OffersParser