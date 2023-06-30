COMMAND_BUYITEM = '!storebuy'
COMMAND_TRANSFER = '!transferpoints'
WEBSITE_GETCOINS = 'http://google.com'
COINS_OPCODE = 52

storeIndex = {
    [1] = {
		id = '1',
		name = 'Premium Time',
		description = 'Buy low-priced Premium Time to add it to your own account.',
		image = "/images/shop/premium_time",
		imageList = '/images/shop/premium_time_small'
	},
	[2] = {
		id = '2',
		name = 'Extra Services',
		description = 'Buy an Extra Service to change your character\'s name or sex.',
		image = "/images/shop/extra_services",
		imageList = '/images/shop/extra_services_small'
	},
	[3] = {
		id = '3',
		name = 'Mounts',
		description = 'Buy your character one or more of the fabulous Mounts offered here.',
		image = '/images/shop/mounts',
		imageList = '/images/shop/mounts_small'
	},
	[4] = {
		id = '4',
		name = 'Outfits',
		description = 'Buy your character one or more of the classy Outfits offered here.',
		image = '/images/shop/outfits',
		imageList = '/images/shop/outfits_small' 
	},
	[5] = {
		id = '5',
		name = 'Transportation',
		description = 'Use a transportation service to save time.',
		image = '/images/shop/transportation',
		imageList = '/images/shop/transportation_small'
	},
}

storeProducts = {
    {
		name = "30 days",
		id = '1',
		category_id = "1",
		description = 'Do you really want to buy "30 days" of premium time?\n\nNote: Once you have purchased Premium Time, your account\ninstantly receives premium status - no relog necessary!',
        tooltip = "",
		price = 250,
		image = "/images/shop/offer/30days"
    },
    {
		name = "90 days",
		id = '2',
		category_id = "1",
		description = 'Do you really want to buy "90 days" of premium time?\n\nNote: Once you have purchased Premium Time, your account\ninstantly receives premium status - no relog necessary!',
        tooltip = "",
		price = 700,
		image = "/images/shop/offer/90days"
    },
    {
		name = "Sex Change",
		id = '3',
		category_id = "2",
		description = 'Do you really want to buy "Sex Change"?',
        tooltip = "",
		price = 120,
		image = "/images/shop/offer/sexChange"
    },
    {
		name = "Floating Kashmir",
		id = '4',
		category_id = "3",
		description = 'Do you really want to buy "Floating Kashmir"?\n\nNote: The Mount will only be received by the character\nwho purchased it in the Store.',
        tooltip = "Floating Kashmir",
		price = 900,
		image = "/images/shop/offer/floatingKashmir"
    },
    {
		name = "Full Seaweaver Outfit",
		id = '5',
		category_id = "4",
		description = 'Do you really want to buy "Full Seaweaver Outfit"?\n\nNote: The Outfit will only be received by the character\nwho purchased it in the Store.',
        tooltip = "Full Seaweaver Outfit",
		price = 570,
		image = "/images/shop/offer/seaweaverOutfit"
    },
    {
		name = "Teleport to temple",
		id = '6',
		category_id = "5",
		description = 'Do you really want to "Teleport to temple"?',
        tooltip = "Teleport to temple",
		price = 55,
		image = "/images/shop/offer/templeTP"
    },
    {
		name = "Name change",
		id = '7',
		category_id = "2",
		description = 'Do you really want to buy "Name change"?',
        tooltip = "",
		price = 250,
		image = "/images/shop/offer/nameChange"
    },
    {
		name = "180 days",
		id = '8',
		category_id = "1",
		description = 'Do you really want to buy "180 days" of premium time?\n\nNote: Once you have purchased Premium Time, your account\ninstantly receives premium status - no relog necessary!',
        tooltip = "",
		price = 1500,
		image = "/images/shop/offer/180days"
    },
    {
		name = "360 days",
		id = '9',
		category_id = "1",
		description = 'Do you really want to buy "360 days" of premium time?\n\nNote: Once you have purchased Premium Time, your account\ninstantly receives premium status - no relog necessary!',
        tooltip = "",
		price = 3000,
		image = "/images/shop/offer/360days"
    },
    {
		name = "Flying Divan",
		id = '10',
		category_id = "3",
		description = 'Do you really want to buy "Flying Divan"?\n\nNote: The Mount will only be received by the character\nwho purchased it in the Store.',
        tooltip = "",
		price = 900,
		image = "/images/shop/offer/flyingDivan"
    },
    {
		name = "Magic Carpet",
		id = '11',
		category_id = "3",
		description = 'Do you really want to buy "Magic Carpet"?\n\nNote: The Mount will only be received by the character\nwho purchased it in the Store.',
        tooltip = "",
		price = 900,
		image = "/images/shop/offer/magicCarpet"
    },
    {
		name = "Shadow Hart",
		id = '12',
		category_id = "3",
		description = 'Do you really want to buy "Shadow Hart"?\n\nNote: The Mount will only be received by the character\nwho purchased it in the Store.',
        tooltip = "",
		price = 660,
		image = "/images/shop/offer/shadowHart"
    },
    {
		name = "Black Stag",
		id = '13',
		category_id = "3",
		description = 'Do you really want to buy "Black Stag"?\n\nNote: The Mount will only be received by the character\nwho purchased it in the Store.',
        tooltip = "",
		price = 660,
		image = "/images/shop/offer/blackStag"
    },
    {
		name = "Emperor Deer",
		id = '14',
		category_id = "3",
		description = 'Do you really want to buy "Emperor Deer"?\n\nNote: The Mount will only be received by the character\nwho purchased it in the Store.',
        tooltip = "",
		price = 660,
		image = "/images/shop/offer/emperorDeer"
    },
	{
		name = "Full Winter Warden Outfit",
		id = '15',
		category_id = "4",
		description = 'Do you really want to buy "Full Winter Warden Outfit"?\n\nNote: The Outfit will only be received by the character\nwho purchased it in the Store.',
        tooltip = "Full Winter Warden Outfit",
		price = 870,
		image = "/images/shop/offer/wardenOutfit"
    },
	{
		name = "Full Champion Outfit",
		id = '16',
		category_id = "4",
		description = 'Do you really want to buy "Full Champion Outfit"?\n\nNote: The Outfit will only be received by the character\nwho purchased it in the Store.',
        tooltip = "Full Champion Outfit",
		price = 570,
		image = "/images/shop/offer/championOutfit"
    },
	{
		name = "Full Conjurer Outfit",
		id = '17',
		category_id = "4",
		description = 'Do you really want to buy "Full Conjurer Outfit"?\n\nNote: The Outfit will only be received by the character\nwho purchased it in the Store.',
        tooltip = "Full Conjurer Outfit",
		price = 720,
		image = "/images/shop/offer/conjurerOutfit"
    },
}