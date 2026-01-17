local tt = gameOption("Common.States")
table.insert(tt, "external/mods/kame_isuka.zss")
modifyGameOption("Common.States", tt)

ffa = {}

ffa.sd=loadIni('external/mods/def/ffa.def')

main.t_itemname.freeforallcpu= function()
main.f_playerInput(main.playerInput, 1)
		main.t_pIn[2] = 1
		--main.lifebar.p1score = true
		--main.lifebar.p2ailevel = true
		main.motif.versusscreen = true
		main.motif.victoryscreen = true
		main.orderSelect[1] = false
		main.orderSelect[2] = false
		main.selectMenu[2] = true
		main.stageMenu = true
		main.teamMenu[1].ratio = false
		main.teamMenu[1].simul = true
		main.teamMenu[1].single = false
		main.teamMenu[1].tag = false
		main.teamMenu[1].turns = false
		main.teamMenu[2].ratio = false
		main.teamMenu[2].simul = true
		main.teamMenu[2].single = false
		main.teamMenu[2].tag = false
		main.teamMenu[2].turns = false
		textImgSetText(motif.select_info.title.TextSpriteData, ffa.sd.select_info.title.text.freeforall)
		setGameMode('freeforall')
		modifyGameOption('Options.Team.PowerShare', 0)
		hook.run("main.t_itemname")
		return start.f_selectMode

	end
	
	main.t_itemname.freeforall=function()
		setHomeTeam(1)
		main.coop = true
		main.cpuSide[2] = false
		--main.lifebar.p1wincount = true
		--main.lifebar.p2wincount = true
		main.numSimul = {2, math.min(4, math.max(2, math.ceil(gameOption('Config.Players') / 2)))}
		main.numTag = {2, math.min(4, math.max(2, math.ceil(gameOption('Config.Players') / 2)))}
		main.selectMenu[2] = true
		main.stageMenu = true
		main.teamMenu[1].simul = true
		main.teamMenu[1].tag = false
		main.teamMenu[2].simul = true
		main.teamMenu[2].tag = false
		main.motif.versusscreen = true
		main.motif.victoryscreen = true
		textImgSetText(motif.select_info.title.TextSpriteData, ffa.sd.select_info.title.text.freeforallcpu)
		setGameMode('freeforall')
		modifyGameOption('Options.Team.PowerShare', 0)
		hook.run("main.t_itemname")
		return start.f_selectMode
	end
	
		main.t_itemname.freeforallwatch=function()
		setHomeTeam(1)
		main.f_playerInput(main.playerInput, 1)
		main.t_pIn[2] = 1
		main.cpuSide[1] = true
		--main.lifebar.p1ailevel = true
		--main.lifebar.p2ailevel = true
		main.selectMenu[2] = true
		main.stageMenu = true
		main.teamMenu[1].ratio = false
		main.teamMenu[1].simul = true
		main.teamMenu[1].single = false
		main.teamMenu[1].tag = false
		main.teamMenu[1].turns = false
		main.teamMenu[2].ratio = false
		main.teamMenu[2].simul = true
		main.teamMenu[2].single = false
		main.teamMenu[2].tag = false
		main.teamMenu[2].turns = false
		main.motif.versusscreen = true
		main.motif.victoryscreen = true
		textImgSetText(motif.select_info.title.TextSpriteData, ffa.sd.select_info.title.text.freeforallwatch)
		setGameMode('freeforall')
		modifyGameOption('Options.Team.PowerShare', 0)
		hook.run("main.t_itemname")
		return start.f_selectMode
	end
