*** Settings ***
Documentation   Job search on LinkedIn
Library         SeleniumLibrary
#Resource

*** Variables ***
${Browser}  Chrome
${URL}      https://www.linkedin.com/login?fromSignIn=true&amp;trk=guest_homepage-basic_nav-header-signin
#${SIGN_IN_BUTTON}  /html/body/nav/div/a[2]
#<a  class="nav__button-secondary btn-md btn-secondary-emphasis"
#    href="https://www.linkedin.com/login?fromSignIn=true&amp;trk=guest_homepage-basic_nav-header-signin"
#    data-tracking-control-name="guest_homepage-basic_nav-header-signin" data-tracking-will-navigate="">
#    Sign in
#</a>

*** Test Cases ***
Successful login
    open browser                    ${URL}  ${Browser}
    wait until page contains        Stay updated on your professional world
    click button                    id:username
    input text                      AAA
    click button                    id:password #//*[@id="password"]
    input text                      BBB
    click button                    //*[@id="organic-div"]/form/div[3]/button

#    Close Browser

*** Keywords ***
