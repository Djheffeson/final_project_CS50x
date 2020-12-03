enemies = {}

require 'src/enemies/overworld/octoroks'
require 'src/enemies/overworld/zoras'
require 'src/enemies/overworld/tektikes'
require 'src/enemies/overworld/leevers'
require 'src/enemies/overworld/peahat'

require 'src/enemies/dungeons/keeses'
require 'src/enemies/dungeons/gels'
require 'src/enemies/dungeons/stalfos'
require 'src/enemies/dungeons/goriyas'

sounds.enemyHit:setVolume(0.5)

-- red octorok = 1
-- blue octorok = 2
-- zora = 3
-- red tektikes = 4
-- blue tektikes = 5
-- red leever = 6
-- blue leever = 7 blue leever have some bugs
-- peahat = 8
enemies_room = {
    {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0}, {3, 1, 1, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 2, 0, 0}, {5, 1, 0, 0, 0, 0, 0, 0},
    {1, 0, 1, 0, 0, 0, 0, 0}, {4, 0, 1, 0, 0, 0, 0, 0}, {4, 0, 0, 0, 0, 0, 0, 0}, {4, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 4},
    {4, 0, 1, 0, 0, 0, 0, 0}, {4, 0, 0, 0, 0, 0, 0, 0}, {4, 0, 0, 0, 0, 0, 0, 0}, {4, 0, 0, 0, 0, 0, 0, 0}, {4, 0, 1, 0, 0, 0, 0, 0},
    {0, 0, 1, 0, 0, 0, 2, 1}, {0, 0, 0, 4, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0}, {4, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 5, 0, 0, 0}
}

-- keese = 1
-- gel = 2
-- stalfo = 3
-- goriya = 4
enemiesDungeon1_rooms = {
    {0,0,0,0}, {0,0,0,0}, {0,0,0,0}, {0,0,0,0}, {0,0,0,0}, {0,0,0,0},
    {0,0,0,0}, {0,3,0,0}, {0,5,0,0}, {0,0,0,0}, {0,0,0,0}, {0,0,0,0},
    {0,0,0,0}, {6,0,0,0}, {0,0,5,0}, {8,0,0,0}, {0,0,0,0}, {0,0,0,0},
    {0,0,0,0}, {0,0,0,0}, {0,0,3,0}, {0,0,0,0}, {0,0,0,0}, {0,0,0,0},
    {0,0,0,0}, {3,0,0,0}, {0,0,0,0}, {0,0,0,1}, {0,0,0,0}, {0,0,0,0}
}

function enemies:update(dt)
    if octoroks ~= nil then
        octoroks:update(dt)
    end

    if zoras ~= nil then
        zoras:update(dt)
    end

    if tektikes ~= nil then
        tektikes:update(dt)
    end

    if leevers ~= nil then
        leevers:update(dt)
    end

    if peahats ~= nil then
        peahats:update(dt)
    end

    if keeses ~= nil then
        keeses:update(dt)
    end

    if gels ~= nil then
        gels:update(dt)
    end

    if stalfos ~= nil then
        stalfos:update(dt)
    end

    if goriyas ~= nil then
        goriyas:update(dt)
    end
end

function enemies:draw()
    if octoroks ~= nil then
        octoroks:draw()
    end

    if zoras ~= nil then
        zoras:draw()
    end

    if tektikes ~= nil then
        tektikes:draw()
    end

    if leevers ~= nil then
        leevers:draw()
    end

    if peahats ~= nil then
        peahats:draw()
    end

    if keeses ~= nil then
        keeses:draw()
    end

    if gels ~= nil then
        gels:draw()
    end

    if stalfos ~= nil then
        stalfos:draw()
    end

    if goriyas ~= nil then
        goriyas:draw()
    end
end

function enemiesPerRoom()
    if Map.type == 'overworld' then
        if enemies_room[currentOverworldRoom][1] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][1], 'red_octorok')
        end

        if enemies_room[currentOverworldRoom][2] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][2], 'blue_octorok')
        end

        if enemies_room[currentOverworldRoom][3] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][3], 'zora')
        end

        if enemies_room[currentOverworldRoom][4] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][4], 'red_tektike')
        end

        if enemies_room[currentOverworldRoom][5] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][5], 'blue_tektike')
        end

        if enemies_room[currentOverworldRoom][6] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][6], 'red_leever')
        end

        if enemies_room[currentOverworldRoom][7] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][7], 'blue_leever')
        end

        if enemies_room[currentOverworldRoom][8] ~= nil then
            spawnEnemy(enemies_room[currentOverworldRoom][8], 'peahat')
        end
    elseif Map.type == 'dungeon_1' then
        if enemiesDungeon1_rooms[currentDungeonRoom][1] ~= nil then
            spawnEnemy(enemiesDungeon1_rooms[currentDungeonRoom][1], 'keese')
        end

        if enemiesDungeon1_rooms[currentDungeonRoom][2] ~= nil then
            spawnEnemy(enemiesDungeon1_rooms[currentDungeonRoom][2], 'gels')
        end

        if enemiesDungeon1_rooms[currentDungeonRoom][3] ~= nil then
            spawnEnemy(enemiesDungeon1_rooms[currentDungeonRoom][3], 'stalfos')
        end

        if enemiesDungeon1_rooms[currentDungeonRoom][4] ~= nil then
            spawnEnemy(enemiesDungeon1_rooms[currentDungeonRoom][4], 'goriyas')
        end

    end

end

function spawnEnemy(quantity, enemy)
    for i = 1, quantity, 1 do

        if enemy == 'red_octorok' then
            spawnOctorok('red')
        elseif enemy == 'blue_octorok' then
            spawnOctorok('blue')
        end

        if enemy == 'zora' then
            spawnZora()
        end

        if enemy == 'red_tektike' then
            spawnTektike('red')
        elseif enemy == 'blue_tektike' then
            spawnTektike('blue')
        end

        if enemy == 'red_leever' then
            spawnLeever('red')
        elseif enemy == 'blue_leever' then
            spawnLeever('blue')
        end

        if enemy == 'peahat' then
            spawnPeahat()
        end

        if enemy == 'keese' then
            spawnKeese()
        end

        if enemy == 'gels' then
            spawnGel()
        end

        if enemy == 'stalfos' then
            spawnStalfo()
        end

        if enemy == 'goriyas' then
            spawnGoriya()
        end

    end
end

function deleteAllEntities()
    deleteOctoroks()
    deleteZoras()
    deleteTektikes()
    deleteLeevers()
    deletePeahats()
    deleteKeeses()
    deleteGels()
    deleteStalfos()
    deleteGoriyas()
end
