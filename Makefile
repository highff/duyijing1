build:
	yarn bower install
	yarn grunt clean build
	rm -rf _site
	mkdir _site
	cp -r dist/*.html dist/*.txt dist/*.xml dist/*.ico dist/images dist/scripts dist/views dist/styles dist/fonts/ _site/

deploy:
	cp -r _site/* /usr/share/nginx/html/yijing.cn/
	#rsync -c -r -ave 'ssh' _site/* freizl_duyijing@ssh.phx.nearlyfreespeech.net:/home/public
