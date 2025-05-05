# 1) Download the tarball of your repo
cd /tmp
curl -L -o offline-installs.tar.gz \
  https://github.com/khalam1/offline-installs/archive/refs/heads/main.tar.gz

# 2) Extract it
mkdir offline-installs
tar -xzf offline-installs.tar.gz --strip-components=1 -C offline-installs
cd offline-installs

# 3) Execute the install script
sudo ./install-rhel9.sh

# 4) Confirm installations
git --version         # e.g., git version 2.x.x
kubectl version --client
mvn -version
