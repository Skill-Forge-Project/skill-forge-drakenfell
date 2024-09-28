// Switch to the 'skill_forge_logs' database
db = db.getSiblingDB('skill_forge_logs');

// Create a user for the 'skill_forge_logs' database
db.createUser({user: "skill_forge", pwd: "skill_forge", roles: [{role: "readWrite", db: "skill_forge_logs"}]});

// Initialize replica set
rs.initiate({_id : "rs0", members: [{ _id: 0, host: "127.0.0.1:27017" }]});