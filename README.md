# Script de Instalação
> Made By: barcelosluan in 20-12-2019

### Windows
	chocolateyPackages.ps1

1. Leia todo o documento e os scripts (se necessário atualize!) :bookmark_tabs:
2. Abra o prompt de comando ```cmd``` no modo administrador :warning:
3. Execute o arquivo ```chocolateyPackages.ps1``` :chocolate_bar:
4. __Divirta-se :smiley:__

### Fedora
	fedoraNVidiaDriver-Part-I.sh
	fedoraNVidiaDriver-Part-II.sh
	fedoraNVidiaOptimusDriver.sh
	fedoraPackages.sh

1. Leia todo o documento e os scripts (se necessário atualize!) :memo:
2. Instale o driver nVidia :floppy_disk:
	1. Placa única
		1. Copie todos os scripts necessários para a pasta home
		2. Execute a primeira parte da instalação do driver nVidia SEM o comando sudo ```./fedoraNVidiaDriver-Part-I.sh```
			1. Quando o gedit abrir, adicione ```rd.driver.blacklist=nouveau``` ao final da linha ```GRUB_CMDLINE_LINUX="…"```
		3. O computador irá reiniciar no modo linha de comando, faça o login com o usuário padrão
		4. Execute a segunda parte da instalação do driver nVidia SEM o comando sudo ```./fedoraNVidiaDriver-Part-II.sh```
		5. Os scripts serão automaticamente apagados, caso tenham sido colocados nos locais corretos
		6. O computador irá reiniciar
	2. Placa hibrida (nVidia + intel)
		1. Execute a instalação do driver nVidia Optimus SEM o comando sudo ```./fedoraNVidiaOptimusDriver.sh```
3. Execute a instalação dos programas essenciais ```./fedoraPackages.sh``` :computer:
4. Faça o download dos aplicativos restantes :arrow_down:
	1. Fontes Microsoft - [mscorefonts2](https://sourceforge.net/projects/mscorefonts2/files/)
	2. [OpenJDK 13 - LTS](https://jdk.java.net/13/)
	3. [Eclipse](https://www.eclipse.org/downloads/)
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
	2. Adicionar os icones à ```/local/share/icons```
7. Adicione a foto do perfil :octocat:
8. Adicione o plano de fundo e imagem da tela de bloqueio :city_sunset:
9. __Divirta-se :smiley:__
