module.exports = {
  apps: [{
    name: "exam-app",
    script: "dist/boot.js",
    env: {
      NODE_ENV: "production",
      PORT: 3000,
    },
    instances: 1,
    exec_mode: "fork",
  }]
};
