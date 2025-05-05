#!/usr/bin/env bash
set -e

# 1) Install Git
sudo dnf install -y rpms/*.rpm

# 2) Install kubectl
chmod +x bin/kubectl
sudo mv bin/kubectl /usr/local/bin/kubectl

# 3) Install Apache Maven
sudo tar -xzf apache-maven/apache-maven-3.9.9-bin.tar.gz -C /opt
sudo ln -sf /opt/apache-maven-3.9.9 /opt/maven

# 4) Configure Maven environment
sudo tee /etc/profile.d/maven.sh > /dev/null << 'EOS'
export M2_HOME=/opt/maven
export PATH=\$M2_HOME/bin:\$PATH
EOS
sudo chmod +x /etc/profile.d/maven.sh

echo "✅ All tools installed. Please open a new shell or run 'source /etc/profile.d/maven.sh'."
