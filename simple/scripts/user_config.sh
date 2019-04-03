U_ID=$(id -u)
G_ID=$(id -g)
mkdir -p ~/.kube
sudo cp /etc/kubernetes/admin.conf ~/.kube/config
sudo chown $U_ID:$G_ID ~/.kube/config
