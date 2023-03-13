{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_yellow_cliff",
  "creationCodeFile": "${project_dir}/rooms/rm_yellow_cliff/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
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
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"weather_layers","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"weather","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
            {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_487303BB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_rain_controller","path":"objects/obj_rain_controller/obj_rain_controller.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":64.0,"y":0.0,},
          ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
        {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"weather_filter","depth":200,"effectEnabled":true,"effectType":"_filter_tintfilter","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
            {"name":"g_TintCol","type":1,"value":"#FFFFF2B2",},
          ],"userdefinedDepth":false,"visible":false,},
      ],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effects","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_F5D44FF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_music","path":"objects/obj_music/obj_music.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_music","path":"objects/obj_music/obj_music.yy",},"propertyId":{"name":"bgm_file","path":"objects/obj_music/obj_music.yy",},"value":"bgm_hotdogpicnic",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":17.0,"y":4.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_72161B90","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_details","path":"objects/obj_room_details/obj_room_details.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_details","path":"objects/obj_room_details/obj_room_details.yy",},"propertyId":{"name":"room_title","path":"objects/obj_room_details/obj_room_details.yy",},"value":"\"Hotdog Stand\"",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":41.0,"y":7.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"text","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":500,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1B497F49","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_hotdog_stand","path":"objects/obj_hotdog_stand/obj_hotdog_stand.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogue_responses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"kevin_quest\"]",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"interact_highlight","path":"objects/parent_entity/parent_entity.yy",},"value":"True",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":229.0,"y":152.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_9155C0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_starhead","path":"objects/obj_starhead/obj_starhead.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogue_responses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"starhead_hotdogs\"]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":282.0,"y":180.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7A5AAEDA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_bull","path":"objects/obj_bull/obj_bull.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogue_responses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"bull_stare\"]",},
          ],"rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":141.0,"y":187.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_49CE4352","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_hotdog_friend","path":"objects/obj_hotdog_friend/obj_hotdog_friend.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogue_responses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"hotdog_friend_truth\"]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":306.0,"y":181.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_580DA93A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_radio","path":"objects/obj_radio/obj_radio.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_radio","path":"objects/obj_radio/obj_radio.yy",},"propertyId":{"name":"musicMain","path":"objects/obj_radio/obj_radio.yy",},"value":"bgm_hotdogpicnic",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_radio","path":"objects/obj_radio/obj_radio.yy",},"propertyId":{"name":"musicAddition","path":"objects/obj_radio/obj_radio.yy",},"value":"bgm_hotdogpicnic_beat",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":365.0,"y":179.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1F214684","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"propertyId":{"name":"script_args","path":"objects/obj_collide_script/obj_collide_script.yy",},"value":"[0]",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"propertyId":{"name":"script_execute1","path":"objects/obj_collide_script/obj_collide_script.yy",},"value":"quest_hotdog_hunt_deliver_dogs",},
          ],"rotation":0.0,"scaleX":4.75,"scaleY":2.875,"x":192.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C39C1B7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_skull","path":"objects/obj_skull/obj_skull.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogue_responses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"skull_intro\"]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":364.0,"y":260.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"decor","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4FBD30EB","colour":4294967295,"frozen":true,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_potplant","path":"objects/obj_potplant/obj_potplant.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":198.0,"y":154.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7C3BFB23","colour":4294967295,"frozen":true,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_potplant","path":"objects/obj_potplant/obj_potplant.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":241.0,"y":154.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_32DDA6E4","colour":4294967295,"frozen":true,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_potplant","path":"objects/obj_potplant/obj_potplant.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":251.0,"y":148.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[],"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"collisions","depth":800,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2711D468","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":7.0,"scaleY":17.0,"x":384.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_109C0EEE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":31.0,"scaleY":11.0,"x":0.0,"y":272.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6383DD4C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":8.0,"scaleY":17.0,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6FBACA83","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":10.750001,"x":128.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_20015449","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":10.687499,"x":320.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_CE41E82","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":8.0,"scaleY":7.6875,"x":192.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4CEBC9F8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sound_emit","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sound_emit","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"propertyId":{"name":"sound","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"value":"snd_snore",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sound_emit","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"propertyId":{"name":"emit_distance","path":"objects/obj_sound_emit/obj_sound_emit.yy",},"value":"25",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":208.0,"y":142.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E6C2C12","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"propertyId":{"name":"targetX","path":"objects/obj_teleport/obj_teleport.yy",},"value":"163",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"propertyId":{"name":"targetY","path":"objects/obj_teleport/obj_teleport.yy",},"value":"229",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"propertyId":{"name":"targetRoom","path":"objects/obj_teleport/obj_teleport.yy",},"value":"rm_forest",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_teleport","path":"objects/obj_teleport/obj_teleport.yy",},"propertyId":{"name":"thumbnail","path":"objects/obj_teleport/obj_teleport.yy",},"value":"spr_roomthumb_circle",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":152.0,"y":251.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_67F04AD0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.3125,"scaleY":0.5625,"x":284.0,"y":143.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_2","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":32,"SerialiseWidth":32,"TileCompressedData":[
-360,-2147483648,-2,0,-30,-2147483648,-2,0,-630,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_decor_misc_tiles","path":"tilesets/ts_decor_misc_tiles/ts_decor_misc_tiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":32,"SerialiseWidth":32,"TileCompressedData":[
-76,-2147483648,-2,0,-27,-2147483648,1,0,-4,-2147483648,1,0,-27,-2147483648,-3,0,1,-2147483648,-3,0,-26,-2147483648,-6,0,-24,-2147483648,-8,0,-26,-2147483648,-10,0,
4,-2147483648,0,-2147483648,0,-18,-2147483648,2,0,10,-6,11,1,12,-20,-2147483648,-4,0,1,20,-6,21,3,22,0,0,-19,-2147483648,-2,0,2,-2147483648,
20,-6,21,2,22,-2147483648,-3,0,-16,-2147483648,1,10,-3,11,1,54,-6,21,1,53,-3,11,1,12,-16,-2147483648,1,20,-14,21,1,22,
-15,-2147483648,2,0,20,-14,21,2,22,0,-14,-2147483648,2,0,20,-14,21,2,22,0,-14,-2147483648,2,0,20,-14,21,1,22,-14,-2147483648,-2,
0,1,30,-14,31,1,32,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,
-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,
-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-16,-2147483648,1,40,-14,41,1,42,-136,
-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_outside_tiles","path":"tilesets/ts_outside_tiles/ts_outside_tiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"bg","depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_42975D91","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_parallax_bg","path":"objects/obj_parallax_bg/obj_parallax_bg.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_parallax_bg","path":"objects/obj_parallax_bg/obj_parallax_bg.yy",},"propertyId":{"name":"image","path":"objects/obj_parallax_bg/obj_parallax_bg.yy",},"value":"bg_sunset",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
  ],
  "parent": {
    "name": "outside",
    "path": "folders/Rooms/outside.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 500,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 500,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":1080,"hspeed":-1,"hview":216,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1920,"wview":384,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}