{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_robot",
  "spriteId": {
    "name": "spr_sleeves",
    "path": "sprites/spr_sleeves/spr_sleeves.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "parent_follower",
    "path": "objects/parent_follower/parent_follower.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":0.0,"y":0.0,},
    {"x":16.0,"y":0.0,},
    {"x":16.0,"y":16.0,},
    {"x":0.0,"y":16.0,},
  ],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
  ],
  "properties": [],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"romanceable","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"True",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"char_name","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"robot",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entity_npc","path":"objects/parent_entity/parent_entity.yy",},"objectId":{"name":"parent_entity","path":"objects/parent_entity/parent_entity.yy",},"value":"True",},
  ],
  "parent": {
    "name": "villain",
    "path": "folders/Objects/npc/villain.yy",
  },
}