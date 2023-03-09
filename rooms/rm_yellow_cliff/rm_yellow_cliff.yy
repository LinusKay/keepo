{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_yellow_cliff",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":384,"hview":216,"xport":0,"yport":0,"wport":1920,"hport":1080,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"weather_layers","visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"weather","instances":[
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_487303BB","properties":[],"isDnd":false,"objectId":{"name":"obj_rain_controller","path":"objects/obj_rain_controller/obj_rain_controller.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":64.0,"y":0.0,},
          ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
        {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"weather_filter","visible":false,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"_filter_tintfilter","properties":[
            {"type":1,"name":"g_TintCol","value":"#FFFFF2B2",},
          ],},
      ],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effects","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_F5D44FF","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"bgmFile","path":"objects/obj_music/obj_music.yy",},"objectId":{"name":"obj_music","path":"objects/obj_music/obj_music.yy",},"value":"bgm_hotdogpicnic",},
          ],"isDnd":false,"objectId":{"name":"obj_music","path":"objects/obj_music/obj_music.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":17.0,"y":4.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_72161B90","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"roomTitle","path":"objects/obj_room_details/obj_room_details.yy",},"objectId":{"name":"obj_room_details","path":"objects/obj_room_details/obj_room_details.yy",},"value":"\"Hotdog Stand\"",},
          ],"isDnd":false,"objectId":{"name":"obj_room_details","path":"objects/obj_room_details/obj_room_details.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":41.0,"y":7.0,},
      ],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"text","instances":[],"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":true,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1B497F49","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogueResponses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"kevin_quest\"]",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"interactHighlight","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"True",},
          ],"isDnd":false,"objectId":{"name":"obj_hotdog_stand","path":"objects/obj_hotdog_stand/obj_hotdog_stand.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":229.0,"y":152.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_9155C0","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogueResponses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"starhead_hotdogs\"]",},
          ],"isDnd":false,"objectId":{"name":"obj_starhead","path":"objects/obj_starhead/obj_starhead.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":282.0,"y":180.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7A5AAEDA","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogueResponses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"bull_stare\"]",},
          ],"isDnd":false,"objectId":{"name":"obj_bull","path":"objects/obj_bull/obj_bull.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":141.0,"y":187.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_49CE4352","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogueResponses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"hotdog_friend_truth\"]",},
          ],"isDnd":false,"objectId":{"name":"obj_hotdog_friend","path":"objects/obj_hotdog_friend/obj_hotdog_friend.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":306.0,"y":181.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_580DA93A","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"musicMain","path":"objects/obj_radio/obj_radio.yy",},"objectId":{"name":"obj_radio","path":"objects/obj_radio/obj_radio.yy",},"value":"bgm_hotdogpicnic",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"musicAddition","path":"objects/obj_radio/obj_radio.yy",},"objectId":{"name":"obj_radio","path":"objects/obj_radio/obj_radio.yy",},"value":"bgm_hotdogpicnic_beat",},
          ],"isDnd":false,"objectId":{"name":"obj_radio","path":"objects/obj_radio/obj_radio.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":365.0,"y":179.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1F214684","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"scriptArgs","path":"objects/obj_collide_script/obj_collide_script.yy",},"objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"value":"[0]",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"scriptExecute","path":"objects/obj_collide_script/obj_collide_script.yy",},"objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"value":"quest_hotdog_hunt_deliver_dogs",},
          ],"isDnd":false,"objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":4.75,"scaleY":2.875,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C39C1B7","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogueResponses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateArgs","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"skull_intro\"]",},
          ],"isDnd":false,"objectId":{"name":"obj_skull","path":"objects/obj_skull/obj_skull.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":364.0,"y":260.0,},
      ],"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"decor","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4FBD30EB","properties":[],"isDnd":false,"objectId":{"name":"obj_potplant","path":"objects/obj_potplant/obj_potplant.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":true,"ignore":false,"inheritItemSettings":false,"x":198.0,"y":154.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7C3BFB23","properties":[],"isDnd":false,"objectId":{"name":"obj_potplant","path":"objects/obj_potplant/obj_potplant.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":true,"ignore":false,"inheritItemSettings":false,"x":241.0,"y":154.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_32DDA6E4","properties":[],"isDnd":false,"objectId":{"name":"obj_potplant","path":"objects/obj_potplant/obj_potplant.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":true,"ignore":false,"inheritItemSettings":false,"x":251.0,"y":148.0,},
      ],"visible":true,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":true,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_A912FC4","spriteId":{"name":"spr_table_round","path":"sprites/spr_table_round/spr_table_round.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":1.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":282.0,"y":142.0,},
      ],"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"collisions","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2711D468","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":7.0,"scaleY":17.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":384.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_109C0EEE","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":31.0,"scaleY":11.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":0.0,"y":272.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6383DD4C","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":8.0,"scaleY":17.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6FBACA83","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":4.0,"scaleY":10.750001,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":128.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_20015449","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":4.0,"scaleY":10.687499,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":320.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_CE41E82","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":8.0,"scaleY":7.6875,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4CEBC9F8","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"sound","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"objectId":{"name":"obj_sound_emit","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"value":"snd_snore",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"emit_distance","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"objectId":{"name":"obj_sound_emit","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"value":"25",},
          ],"isDnd":false,"objectId":{"name":"obj_sound_emit","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":208.0,"y":142.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E6C2C12","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/obj_teleport/obj_teleport.yy",},"objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"value":"163",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/obj_teleport/obj_teleport.yy",},"objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"value":"229",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/obj_teleport/obj_teleport.yy",},"objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"value":"rm_forest",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"thumbnail","path":"objects/obj_teleport/obj_teleport.yy",},"objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"value":"spr_roomthumb_circle",},
          ],"isDnd":false,"objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":152.0,"y":251.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_67F04AD0","properties":[],"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.3125,"scaleY":0.5625,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":284.0,"y":143.0,},
      ],"visible":true,"depth":800,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_2","tilesetId":{"name":"ts_decor_misc_tiles","path":"tilesets/ts_decor_misc_tiles/ts_decor_misc_tiles.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":32,"SerialiseHeight":32,"TileCompressedData":[
-360,-2147483648,-2,0,-30,-2147483648,-2,0,-630,-2147483648,],},"visible":true,"depth":900,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","tilesetId":{"name":"ts_outside_tiles","path":"tilesets/ts_outside_tiles/ts_outside_tiles.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":32,"SerialiseHeight":32,"TileCompressedData":[
-76,-2147483648,-2,0,-27,-2147483648,1,0,-4,-2147483648,1,0,-27,-2147483648,-3,0,1,-2147483648,-3,0,-26,-2147483648,-6,0,-24,-2147483648,-8,0,-26,-2147483648,-10,0,
4,-2147483648,0,-2147483648,0,-18,-2147483648,2,0,10,-6,11,1,12,-20,-2147483648,-4,0,1,20,-6,21,3,22,0,0,-19,-2147483648,-2,0,2,-2147483648,
20,-6,21,2,22,-2147483648,-3,0,-16,-2147483648,1,10,-3,11,1,54,-6,21,1,53,-3,11,1,12,-16,-2147483648,1,20,-14,21,1,22,
-15,-2147483648,2,0,20,-14,21,2,22,0,-14,-2147483648,2,0,20,-14,21,2,22,0,-14,-2147483648,2,0,20,-14,21,1,22,-14,-2147483648,-2,
0,1,30,-14,31,1,32,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,
-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,
-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-136,
-2147483648,],},"visible":true,"depth":1000,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"bg","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_42975D91","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"image","path":"objects/obj_parallax_bg/obj_parallax_bg.yy",},"objectId":{"name":"obj_parallax_bg","path":"objects/obj_parallax_bg/obj_parallax_bg.yy",},"value":"bg_sunset",},
          ],"isDnd":false,"objectId":{"name":"obj_parallax_bg","path":"objects/obj_parallax_bg/obj_parallax_bg.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":0.0,"y":0.0,},
      ],"visible":true,"depth":1100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "${project_dir}/rooms/rm_yellow_cliff/RoomCreationCode.gml",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_42975D91","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_2711D468","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_109C0EEE","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_6383DD4C","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_6FBACA83","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_20015449","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_CE41E82","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_1B497F49","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_4CEBC9F8","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_5E6C2C12","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_9155C0","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_7A5AAEDA","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_F5D44FF","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_49CE4352","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_72161B90","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_67F04AD0","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_4FBD30EB","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_7C3BFB23","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_32DDA6E4","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_580DA93A","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_487303BB","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_1F214684","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
    {"name":"inst_C39C1B7","path":"rooms/rm_yellow_cliff/rm_yellow_cliff.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 500,
    "Height": 500,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "outside",
    "path": "folders/Rooms/outside.yy",
  },
}