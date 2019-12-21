# Script de Instalação
> Made By: barcelosluan in 20-12-2019

---

### Windows
	chocolateyPackages.ps1

1. Leia todo o documento e os scripts (se necessário atualize!) :bookmark_tabs:
2. Abra o prompt de comando `cmd` no modo administrador :warning:
3. Execute o arquivo `chocolateyPackages.ps1` :chocolate_bar:
4. __Divirta-se :smiley:__

---

### Fedora
	fedoraNVidiaDriver-Part-I.sh
	fedoraNVidiaDriver-Part-II.sh
	fedoraNVidiaOptimusDriver.sh
	fedoraPackages.sh

1. Leia todo o documento e os scripts (se necessário atualize!) :memo:
2. Instale o driver nVidia :floppy_disk:
	1. Placa única
		1. Copie todos os scripts necessários para `$HOME`
		2. Execute a primeira parte da instalação do driver nVidia SEM o comando sudo `./fedoraNVidiaDriver-Part-I.sh`
			* Quando o gedit abrir, adicione `rd.driver.blacklist=nouveau` ao final da linha `GRUB_CMDLINE_LINUX="…"`
		3. O computador irá reiniciar no modo linha de comando, faça o login com o usuário padrão
		4. Execute a segunda parte da instalação do driver nVidia SEM o comando sudo `./fedoraNVidiaDriver-Part-II.sh`
		5. Aceite todos os passos da instalação
		6. Os scripts serão automaticamente apagados, caso tenham sido colocados nos locais corretos
		7. O computador irá reiniciar
	2. Placa hibrida (nVidia + intel)
		1. Execute a instalação do driver nVidia Optimus SEM o comando sudo `./fedoraNVidiaOptimusDriver.sh`
3. Execute a instalação dos programas essenciais `./fedoraPackages.sh` :computer:
4. Faça o download dos aplicativos restantes :arrow_down:
	1. Fontes Microsoft - [mscorefonts2](https://sourceforge.net/projects/mscorefonts2/files/)
	2. [OpenJDK 13 - LTS](https://jdk.java.net/13/)
		1. Crie uma pasta `Aplicativos/Java` na `$HOME`
		2. Baixe o openjdk
		3. Mova o `openjdk-*.tar.gz` para a pasta `Aplicativos/Java`
		4. Descompacte o arquivo
		5. Mova a pasta `jdk-13*` para a pasta anterior e renomeie para apenas `jdk-13`
		6. Edite o arquivo `/etc/profile` como usuario root e adicione ao final do arquivo
			```
			JAVA_HOME=$HOME/Aplicativos/Java/jdk-13
			PATH=$PATH:$JAVA_HOME/bin
			export JAVA_HOME
			export PATH
			```
		7. Inclua o novo java no sistema
			```
			sudo update-alternatives --install "/usr/bin/java" "java" "$HOME/Aplicativos/Java/jdk-13/bin/java" 1
			sudo update-alternatives --install "/usr/bin/javac" "javac" "$HOME/Aplicativos/Java/jdk-13/bin/javac" 1
			sudo update-alternatives --install "/usr/bin/javaws.itweb" "javaws.itweb" "$HOME/Aplicativos/Java/jdk-13/bin/javaws.itweb" 1
			```
		8. Marque o novo java como principal
			```
			sudo update-alternatives --set java "$HOME/Aplicativos/Java/jdk-13/bin/java" 1
			sudo update-alternatives --set javac "$HOME/Aplicativos/Java/jdk-13/bin/javac" 1
			sudo update-alternatives --set javaws.itweb "$HOME/Aplicativos/Java/jdk-13/bin/javaws.itweb" 1
			```
		9. Recarregue o `$PATH`
			```
			source /etc/profile
			```
		10. `reboot`
	3. [Eclipse](https://www.eclipse.org/downloads/)
		1. Crie uma pasta `Workspaces/Java` na `$HOME`
		2. Crie uma pasta `Eclipse` na `$HOME/Aplicativos`
		3. Baixe o Eclipse
		4. Extraia o arquivo baixado
		5. Execute o arquivo `./eclipse-inst-linux64/eclipse-installer/eclipse-inst`
		6. Selecione `Eclipse IDE for Java Developers`
		7. Em `Java 1.8+ VM` selecione o `./*jdk-13 (Current)`
		8. Em `Installation Folder` selecione `$HOME/Aplicativos/Eclipse`
		9. Clique em `Install` e aceite os termos e por fim em `Launch`
		10. Selecione a `$HOME/Workspace/Java` como diretório padrão dos projetos
		10. Para criar o atalho de inicialização, é necessário ter o aplicativo `alacarte` (Menu Principal/Main Menu)
			* Abra o `alacarte`
			* Na aba `Desenvolvimento`, adicione um `Novo Item`
				```
				Nome: Eclipse
				Command: `$HOME/Aplicativos/Eclipse/eclipse/eclipse`
				Comment: Eclipse IDE
				Clique no quadrado em branco para adicionar um ícone e selecione `$HOME/Aplicativos/Eclipse/eclipse/icon.xpm`
				```
	4. [TeamViewer](https://www.teamviewer.com/pt-br/download/linux/)
5. Faça o download das extenções do gnome :arrow_down:
	1. [Applications Menu](https://extensions.gnome.org/extension/6/applications-menu/)
	2. [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
	3. [Hide Activities Button](https://extensions.gnome.org/extension/744/hide-activities-button/)
	4. [More Columns in Applications View](https://extensions.gnome.org/extension/1305/more-columns-in-applications-view/)
	5. [No Topleft Hot Corner](https://extensions.gnome.org/extension/118/no-topleft-hot-corner/)
	6. [Openweather](https://extensions.gnome.org/extension/750/openweather/)
	7. [Places Status Indicator](https://extensions.gnome.org/extension/8/places-status-indicator/)
6. Adicione os icones [delft](https://www.gnome-look.org/p/1199881/) ou [obsidian](https://www.gnome-look.org/p/1169579/) :triangular_flag_on_post:
	1. Extrair o pacote de icones
	2. Adicionar os icones à `/local/share/icons`
7. Adicione a foto do perfil :octocat:
8. Adicione o plano de fundo e imagem da tela de bloqueio :city_sunset:
9. __Divirta-se :smiley:__
