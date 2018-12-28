echo ==== Installing Requirements ==============================================
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y curl openssh-server ca-certificates postfix

echo ==== Installing GitLab CE =================================================
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install -y gitlab-ce
sudo gitlab-ctl reconfigure
sudo gitlab-ctl status

echo ==== Installing GitLab Multi Runner =======================================
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
sudo apt-get install -y gitlab-ci-multi-runner
