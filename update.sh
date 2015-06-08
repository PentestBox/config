if [ $# -eq 0 ]
then
	echo "Hi there! This is PentestBox update Utility. You Can update all tools with a single command or individually as well."
	echo ""
	echo "update all : updates all the tools present inside PentestBox."
	echo "update android : updates all android security tools"
	echo "update beefproject : updates BeefProject"
	echo "update forensic : updates Forensic Tools"
	echo "update informationgathering : updates Information Gathering Tools"
	echo "update passwordattacks : updates Password Attacks Tools"
	echo "update postexploitation : updates Post Exploitation Tools"
	echo "update socialengineertoolkit : updates Social Engineer Toolkit"
	echo "update webapplication : updates Web Application Tools"
	echo "update config : updates config files
	exit
fi
if [ $1 = "android" ]
then
	cd bin
	echo "Updating AndroidSecurity Tools"
	cd androidsecurity

	cd pidcat
	git pull origin master
	echo "Updated Pidcat"
	cd ..

	cd androguard
	git pull origin master
	echo "Updated Androguard"
	cd ..

	cd androwarn
	git pull origin master
	echo "Updated Androwarn"
	cd ..

	cd Introspy-Analyzer
	git pull origin master
	echo "Updated Introspy-Analyzer"
	cd ..

	echo "All Android Security Tools Updated"
	cd ..
	cd ..
	exit
fi
if [ $1 = "beefproject" ]
then
  cd bin
  echo "Updating Beef Project"
  cd beef
  git pull origin master
  echo "Beef Project Updated"
  cd ..
  cd ..
  exit
fi
if [ $1 = "config" ]
then
  cd config
  echo "Updating Config Files"
  git pull origin master
  echo "Config Files Updated"
  cd ..
  exit
fi
if [ $1 = "forensic" ]
then
  cd bin
  echo "Updating Forensic Tools"
  cd ForensicTools

  cd CapTipper
  git pull origin master
  echo "Updated CapTipper"
  cd ..

  cd cuckoo
  git pull origin master
  echo "Updated Cuckoo"
  cd ..

  cd peepdf
  git pull origin master
  echo "Updated peepdf"
  cd ..

  echo "Forensic Tools Updated"
  cd ..
  cd ..
  exit
fi
if [ $1 = "informationgathering" ]
then
  cd bin
  echo "Updating InformationGathering Tools"
  cd InformationGathering

  cd dnsrecon
  git pull origin master
  echo "Updated dnsrecon"
  cd ..

  cd instarecon
  git pull origin master
  echo "Updated Instarecon"
  cd ..

  cd knock
  git pull origin master
  echo "Updated knock"
  cd ..

  cd Responder
  git pull origin master
  echo "Updated Responder"
  cd ..

  cd sslstrip
  git pull origin master
  echo "Updated SSLStrip"
  cd ..

  cd sslyze
  git pull origin master
  echo "Updated SSLyze"
  cd ..

  cd subbrute
  git pull origin master
  echo "Updated SubBrute"
  cd ..

  cd TekDefense-Automater
  git pull origin master
  echo "Updated TekDefense-Automater"
  cd ..

  cd theHarvester
  git pull origin master
  echo "Updated theHarvester"
  cd ..

  echo "Information Gathering Tools Updated"
  cd ..
  cd ..
  exit
fi
if [ $1 = "passwordattacks" ]
then
  cd bin
  echo "Updating Password Attacks Tools"
  cd password_attacks

  cd LaZagne
  git pull origin master
  echo "Updated Lazagne"
  cd ..

  cd patator
  git pull origin master
  echo "Updated Patator"
  cd ..

  cd thc-hydra-windows
  git pull origin master
  echo "Updated THC-Hydra"
  cd ..

  echo "Password Attacks Tools Updated"
  cd ..
  cd ..
  exit
fi
if [ $1 = "postexploitation" ]
then
  cd bin
  echo "Updating Post Exploitation Tools"
  cd PostExploitationTools

  cd weevely3
  git pull origin master
  echo "Updated Weevely"
  cd ..

  echo "Post Exploitation Tools Updated"
  cd ..
  cd ..
  exit
fi
if [ $1 = "socialengineertoolkit" ]
then
  cd bin
  echo "Updating Social Engineer Toolkit"
  cd social-engineer-toolkit
  git pull origin master
  echo "Update Social Engineer Toolkit"
  cd ..
  cd ..
  exit
fi
if [ $1 = "webapplication" ]
then
  cd bin
  echo "Updating WebApplications Tools"
  cd WebApplications

  cd commix
  git pull origin master
  echo "Updated Commix"
  cd ..

  cd fimap
  git pull origin master
  echo "Updated fimap"
  cd ..

  cd golismero
  git pull origin master
  echo "Updated golismero"
  cd ..

  cd nikto
  git pull origin master
  echo "Updated Nikto"
  cd ..

  cd PadBuster
  git pull origin master
  echo "Updated PadBuster"
  cd ..

  cd sqlmap
  git pull origin master
  echo "Updated SQLMap"
  cd ..

  cd wfuzz
  git pull origin master
  echo "Updated wfuzz"
  cd ..

  cd wpscan
  git pull origin master
  echo "Updated WpScan"
  cd ..

  cd yasuo
  git pull origin master
  echo "Updated yasuo"
  cd ..

  echo "WebApplications Tools Updated"
  cd ..
  cd ..
  exit
fi

if [ $1 = "stresstesting" ]
then
	cd bin
	echo "Updating Stress Testing Tools"
	cd StressTesting

	cd termineter
	git pull origin master
	echo "Updated termineter"
	cd ..

	echo "Stress Testing Tools Updated"
	cd ..
	cd ..
	exit
fi
if [ $1 = "all" ]
then
 	cd bin
	echo "Updating AndroidSecurity Tools"
	cd androidsecurity

	cd pidcat
	git pull origin master
	echo "Updated Pidcat"
	cd ..

	cd androguard
	git pull origin master
	echo "Updated Androguard"
	cd ..

	cd androwarn
	git pull origin master
	echo "Updated Androwarn"
	cd ..

	cd Introspy-Analyzer
	git pull origin master
	echo "Updated Introspy-Analyzer"
	cd ..

	echo "All Android Security Tools Updated"
	cd ..

	echo "Updating Beef Project"
	cd beef
	git pull origin master
	echo "Beef Project Updated"
	cd ..

	echo "Updating Forensic Tools"
	cd ForensicTools

	cd CapTipper
	git pull origin master
	echo "Updated CapTipper"
	cd ..

	cd cuckoo
	git pull origin master
	echo "Updated Cuckoo"
	cd ..

	cd peepdf
	git pull origin master
	echo "Updated peepdf"
	cd ..

	echo "Forensic Tools Updated"
	cd ..

	echo "Updating InformationGathering Tools"
	cd InformationGathering

	cd dnsrecon
	git pull origin master
	echo "Updated dnsrecon"
	cd ..

	cd instarecon
	git pull origin master
	echo "Updated Instarecon"
	cd ..

	cd knock
	git pull origin master
	echo "Updated knock"
	cd ..

	cd Responder
	git pull origin master
	echo "Updated Responder"
	cd ..

	cd sslstrip
	git pull origin master
	echo "Updated SSLStrip"
	cd ..

	cd sslyze
	git pull origin master
	echo "Updated SSLyze"
	cd ..

	cd subbrute
	git pull origin master
	echo "Updated SubBrute"
	cd ..

	cd TekDefense-Automater
	git pull origin master
	echo "Updated TekDefense-Automater"
	cd ..

	cd theHarvester
	git pull origin master
	echo "Updated theHarvester"
	cd ..

	echo "Information Gathering Tools Updated"
	cd ..

	echo "Updating Password Attacks Tools"
	cd password_attacks

	cd LaZagne
	git pull origin master
	echo "Updated Lazagne"
	cd ..

	cd patator
	git pull origin master
	echo "Updated Patator"
	cd ..

	cd thc-hydra-windows
	git pull origin master
	echo "Updated THC-Hydra"
	cd ..

	echo "Password Attacks Tools Updated"
	cd ..

	echo "Updating Post Exploitation Tools"
	cd PostExploitationTools

	cd nishang
	git pull origin master
	echo "Updated Nishang"
	cd ..

	cd weevely3
	git pull origin master
	echo "Updated Weevely"
	cd ..

	echo "Post Exploitation Tools Updated"
	cd ..

	echo "Updating Social Engineer Toolkit"
	cd social-engineer-toolkit
	git pull origin master
	echo "Update Social Engineer Toolkit"
	cd ..

	echo "Updating WebApplications Tools"
	cd WebApplications

	cd commix
	git pull origin master
	echo "Updated Commix"
	cd ..

	cd fimap
	git pull origin master
	echo "Updated fimap"
	cd ..

	cd golismero
	git pull origin master
	echo "Updated golismero"
	cd ..

	cd nikto
	git pull origin master
	echo "Updated Nikto"
	cd ..

	cd PadBuster
	git pull origin master
	echo "Updated PadBuster"
	cd ..

	cd sqlmap
	git pull origin master
	echo "Updated SQLMap"
	cd ..

	cd wfuzz
	git pull origin master
	echo "Updated wfuzz"
	cd ..

	cd wpscan
	git pull origin master
	echo "Updated WpScan"
	cd ..

	cd yasuo
	git pull origin master
	echo "Updated yasuo"
	cd ..

	echo "WebApplications Tools Updated"
	cd ..

	echo "Updating Stress Testing Tools"
	cd StressTesting

	cd termineter
	git pull origin master
	echo "Updated termineter"
	cd ..

	echo "Stress Testing Tools Updated"
	cd ..
	cd ..
	exit
fi
