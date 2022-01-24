# Response

Test your web page's Responsiveness in Linux Desktop ! <br>

And build Mobile first Websites with less resource hog :)

[![Get it on AppCenter](https://appcenter.elementary.io/badge.svg)](https://appcenter.elementary.io/com.github.rajsolai.response)

<a href="https://www.buymeacoffee.com/rajsolai" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="width: 200px;" ></a>

<a href="https://www.producthunt.com/posts/response-2?utm_source=badge-review&utm_medium=badge&utm_souce=badge-response-2#discussion-body" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/review.svg?post_id=318284&theme=dark" alt="Response - Test your web page's Responsiveness | Product Hunt" style="width: 250px; height: 54px;" width="250" height="54" /></a>

<a href='https://flathub.org/apps/details/com.github.rajsolai.response'><img width='240' alt='Download on Flathub' src='https://flathub.org/assets/badges/flathub-badge-en.png'/></a>

![Main Screen on Response](./data/screenshots/app_normal_mobile.png "Main Screen of Response")

## Dependencies

Ensure you have these dependencies installed

-   gtk+-3.0
-   webkit2gtk-4.0

## Install, build and run

```bash
# install elementary-sdk, meson and ninja
sudo apt install elementary-sdk meson ninja
# install webkit-gtk (webview for GTK)
sudo apt install libwebkit2gtk-4.0-dev
# clone repository
git clone https://github.com/RajSolai/Response
# cd to dir
cd Response
# run meson
meson build --prefix=/usr
# cd to build, build and test
cd build
sudo ninja install && com.github.rajsolai.response
```
## Build flatpak locally

``` bash
# install elementary os runtime (version 6)
flatpak install io.elementary.Sdk 

# clone repository
git clone https://github.com/RajSolai/Response

# run the build script
sh start.sh
```