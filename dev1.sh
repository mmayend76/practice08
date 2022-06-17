if [$? -eq 0]

then
 yum install wget -y

fi
echo "disable key check on the repo"


sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

echo step3 " Install the latest stable version of Jenkins"

 yum install jenkins
echo "we need to start the jenkins service"

systemctl start jenkins
echo " check the status"

 systemctl status jenkins
