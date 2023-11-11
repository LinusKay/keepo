{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_town_wizard",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_B2CAEE","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_10F684A9","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_7897948D","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_4600F936","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_13427327","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_636C7F47","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_28107497","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_2E5534BB","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_79F18010","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_6B27D1CB","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_792F70C6","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
    {"name":"inst_84161B5","path":"rooms/rm_town_wizard/rm_town_wizard.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"text","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effects","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"collisions","depth":200,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_10F684A9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":8.0,"scaleY":11.0,"x":176.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7897948D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":24.0,"scaleY":6.0,"x":-80.0,"y":208.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4600F936","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":6.0,"scaleY":17.0,"x":-80.0,"y":-64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_13427327","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":18.0,"scaleY":6.0,"x":16.0,"y":-64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_28107497","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":1.0,"x":16.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2E5534BB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":1.0,"x":112.0,"y":192.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_79F18010","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_warp_block","path":"objects/obj_warp_block/obj_warp_block.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":0.8125,"x":80.0,"y":195.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6B27D1CB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"propertyId":{"name":"target_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"value":"quest_skull_delivery_wizard",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_collide_script","path":"objects/obj_collide_script/obj_collide_script.yy",},"propertyId":{"name":"script_args","path":"objects/obj_collide_script/obj_collide_script.yy",},"value":"[0]",},
          ],"rotation":0.0,"scaleX":10.0,"scaleY":3.0,"x":16.0,"y":112.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_792F70C6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_skeleton","path":"objects/obj_skeleton/obj_skeleton.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":69.0,"y":103.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[],"depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":400,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_B2CAEE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wizard","path":"objects/obj_wizard/obj_wizard.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_script","path":"objects/parent_entity/parent_entity.yy",},"value":"dialogue_responses",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/parent_entity/parent_entity.yy",},"value":"[\"wizard_intro\"]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":106.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_636C7F47","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_cauldron","path":"objects/obj_cauldron/obj_cauldron.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":54.0,"y":77.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_84161B5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_details","path":"objects/obj_room_details/obj_room_details.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_room_details","path":"objects/obj_room_details/obj_room_details.yy",},"propertyId":{"name":"room_title","path":"objects/obj_room_details/obj_room_details.yy",},"value":"Wizard's House",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":48,"SerialiseWidth":19,"TileCompressedData":[
-20,-2147483648,-11,0,-8,-2147483648,1,8,-8,9,1,10,-9,-2147483648,1,16,-8,17,1,
18,-9,-2147483648,1,16,-8,17,1,18,-9,-2147483648,1,16,-8,17,1,18,-9,-2147483648,
1,16,-8,17,1,18,-9,-2147483648,1,48,-8,49,1,50,-9,-2147483648,1,16,-8,
17,1,18,-9,-2147483648,1,16,-8,17,1,18,-9,-2147483648,1,16,-8,17,1,18,
-9,-2147483648,1,24,-3,25,-2,17,-3,25,1,26,-13,-2147483648,2,24,26,-677,-2147483648,
],"TileDataFormat":1,},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "inside",
    "path": "folders/Rooms/inside.yy",
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
    "Height": 768,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 300,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":108,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1366,"wview":192,"xport":0,"xview":0,"yport":0,"yview":0,},
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