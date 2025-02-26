sudo apt update -y
sudo apt install golang-go -y
CGO_ENABLED=1 go install github.com/projectdiscovery/katana/cmd/katana@latest
sudo cp ~/go/bin/katana /bin
sudo apt install paramspider -y
go install github.com/tomnomnom/waybackurls@latest
sudo cp ~/go/bin/waybackurls /bin

sudo cp littlejiggly.sh littlejiggly
sudo chmod 777 littlejiggly
sudo cp littlejiggly /bin
