cat << 'EOF' | sudo tee /etc/profile.d/maven.sh
export M2_HOME=/opt/maven
export PATH=\$M2_HOME/bin:\$PATH
EOF
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
