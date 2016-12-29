if [ ${TRAVIS_TAG} ]; then
  mkdir out;
  cd out;
  git clone https://github.com/electron-userland/electron-forge.git;
  cd electron-forge;
  git checkout publish-cmd;
  npm install;
  npm link;
  cd ../..;
  electron-forge publish;
fi