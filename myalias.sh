alias curljsonpost='curl -H "Content-Type: application/json" -X POST -d'
alias curljsonput='curl -H "Content-Type: application/json" -X PUT -d'
alias taskman='ps aux --sort rss'
alias lsdocker='sudo docker ps -a'
alias lsdockerimages='sudo docker images'
alias dockercleancontainer='sudo docker rm $(sudo docker ps -a -q)'
alias dockerbuild='sudo docker build -t'
alias dockerrun='sudo docker run -v /etc/localtime:/etc/localtime:ro'
alias dockerstop='sudo docker stop'
alias dockerstart='sudo docker start'
alias dockerpush='sudo docker push'
alias dockerlogs='sudo docker logs --tail=200'
alias dockerstats='sudo docker stats'
alias dockerrmimages='sudo docker rmi'
alias dockerinspect='sudo docker inspect'
alias dockercompose='sudo docker-compose'
alias dockerexec='sudo docker exec -it'
alias dockerimagesclean='dockerrmimages $(lsdockerimages | grep "^<none>" | awk "{print $3}")'
alias dockerviz='dockerrun -d -v /var/run/docker.sock:/var/run/docker.sock -e PORT=3000 -p 3000:3000 centurylink/image-graph'
alias noderedstart='dockerrun -d -v ~/.node-red/:/root/.node-red -p 1880:1880 -h nodered nhong/node-red'
alias zkstart='dockerrun -v ~/.zookeeper/conf/:/opt/zookeeper/conf -v ~/.zookeeper/data:/tmp/zookeeper -p 2181:2181 jplock/zookeeper'
alias kafkastart='dockerrun -v ~/.kafka/data/:/tmp/kafka-logs -v ~/.kafka/config/:/opt/kafka/config -p 9092:9092 nhong/kafka'
alias rosstart='dockerrun -t -p 9090:9090 nhong/rosbridge'
# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ckan-postgres-start='dockerrun --name ckan-postgres -e POSTGRES_PASSWORD=password -e POSTGRES_USER=ckan_default -d postgres'
alias ckan-solr-start='dockerrun --name ckan-solr -d nhong/solr-tomcat'
alias ckan-start='dockeddrrun --link ckan-solr --link ckan-postgres -p 3433:8080 -d nhong/ckan'
alias ckan-link-start='dockerrun --link ckan-solr:solr --link ckan-postgres:postgres -p 3433:8080'
alias pgadmin-start='dockerrun -d -p 8081:80 --link ckan-postgres:postgresql -e VIRTUAL_HOST=bennu.magic.ubc.ca maxexcloo/phppgadmin'

# enable color support of ls and also add handy aliases
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
# some more ls aliases
alias ll='ls -ahlFrt'
alias la='ls -A'
alias l='ls -CF'

alias base64decode='base64 -d <<< '
alias base64encode='openssl base64 -e <<< '

alias kuberestart='kubectl rollout restart deployment'
alias kubeupdate='kubectl rollout status -w deployment'
kuberollbacktorevision(){
  kubectl rollout undo deployment $1 --to-revision=$2
}
alias kubehistory='kubectl rollout history deployment'
alias kubelogs='kubectl logs'
alias kubeexec='kubectl exec -it'
alias kubedescribehpa='kubectl describe hpa'
alias kubedescribepod='kubectl describe pod'
alias kubedescribenode='kubectl describe node'
alias kubedescribeservice='kubectl describe service'
alias kubedescribesecret='kubectl describe secret'
alias kubeswitchcontext='kubectl config use-context'
alias kubepordforwardpod='kubectl port-forward'
alias kubetoppod='kubectl top pod'
alias kubetopnode='kubectl top node'

alias lscurentcontext='kubectl config current-context'
alias lspods='kubectl get pods'
alias lspodsimages='kubectl get pods -o=custom-columns=NAME:.metadata.name,IMAGE:.spec.containers[0].image'
alias lsnodes='kubectl get nodes'
alias lspodsallnamespace='kubectl get pods --all-namespaces'
alias lspodsnodes='kubectl get pods -o=custom-columns=NODE:.spec.nodeName,NAME:.metadata.name --sort-by=.spec.nodeName'
alias lspodsnodesallnamespace='kubectl get pods -o=custom-columns=NODE:.spec.nodeName,NAME:.metadata.name --sort-by=.spec.nodeName --all-namespaces'
alias lsservices='kubectl get services'
alias lsnamespace='kubectl get namespace'
alias lsconfigmap='kubectl get configmap'
alias lssecrets='kubectl get secret'
alias lsservicesaccount='kubectl get serviceaccount'
alias lsclusterrolebinding='kubectl get clusterrolebinding'
alias lshpa='kubectl get hpa'
alias lsservicesendpoints='kubectl describe endpoints'

alias kubeletlogs='journalctl -u kubelet'
alias kopsexportconfig='kops export kubecfg kube.umbracity.com --admin'

alias kubedeletehpa='kubectl delete hpa'
alias kubedeletedeployment='kubectl delete deployment'
alias kubedeletenode='kubectl delete node'
alias kubedeleteservice='kubectl delete service'
alias kubedeletesecret='kubectl delete secret'

alias jsonprint='python -m json.tool'

alias kubesetnamespace='kubectl config set-context --current --namespace '

alias kubecurrentns='kubectl config view | grep namespace'
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$PATH:/Users/nhong/Applications/heroku/bin
export PATH=$PATH:/Users/nhong/Applications/kots_darwin_all

setopt rmstarsilent


alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gmr='git push -u origin HEAD'
alias gm='git merge'
alias gac='git commit -a -m'
alias gp='git pull'
