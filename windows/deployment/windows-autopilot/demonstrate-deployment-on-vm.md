---
title: Demonstrate Autopilot deployment on a VM
description: Step-by-step instructions on how to set-up a Virtual Machine with a Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.collection: M365-modern-desktop
ms.topic: article
---
<div id="main" class="v2">
    <div class="container">
        <h1>Demonstrate Autopilot deployment on a VM</h1>
        <ul id="databases" class="cardsL panelContent" style="display: block; margin: 0px;">
          <li class="fullSpan">
              <div class="container intro">
                  <p>In this topic you'll learn how to set-up a Windows Autopilot deployment for a virtual machine (VM) using Hyper-V. Note: Although there are multiple platforms available to enable Autopilot, this lab primarily uses Intune.</p>
              </div>
          </li>
          <li>
            <div class="cardSize">
                <div class="cardPadding">
                  <div class="card" style="padding: 0 12px 54px 0;">
                      <div class="cardText" style="box-shadow: 0 2px 5px #e8e8e8; border: 1px solid #dbdbdb;">
                          <h3 class="bgdAccent1" style="padding: 8px; display: flex; background: #66ccff; font-weight: bold; border-bottom: 0; margin-bottom: 0; line-height: 42px">
                            <div class="cardImageOuter" style="margin: 0 8px 0 10px;">
                              <div class="cardImage" style="width: 32px;">
                                <img src="/media/common/i_deploy.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Overview
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="https://www.youtube-nocookie.com/embed/KYVptkpsOqs">Review concepts and procedures in this lab before starting.</a>
                                <span style="margin-left: 32px; align-self: center;">47m</span>
                              </li>                              
                          </ul>
                      </div>
                    </div>
                </div>
            </div>
          </li>
          <li>
            <div class="cardSize">
                <div class="cardPadding">
                  <div class="card" style="padding: 0 12px 54px 0;">
                      <div class="cardText" style="box-shadow: 0 2px 5px #e8e8e8; border: 1px solid #dbdbdb;">
                          <h3 class="bgdAccent1" style="padding: 8px; display: flex; background: #f2c811; font-weight: bold; border-bottom: 0; margin-bottom: 0; line-height: 42px">
                            <div class="cardImageOuter" style="margin: 0 8px 0 10px;">
                              <div class="cardImage" style="width: 32px;">
                                <img src="media/pbi-getting-data.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Prerequisites
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="gettingdata.yml?tutorial-step=1">Overview of Power BI Desktop</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="gettingdata.yml?tutorial-step=2">Getting started with Power BI Desktop</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="gettingdata.yml?tutorial-step=3">Connect to data sources in Power BI Desktop</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="gettingdata.yml?tutorial-step=4">Clean and transform your data with the Query Editor</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="gettingdata.yml?tutorial-step=5">More advanced data sources and transformation</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="gettingdata.yml?tutorial-step=6">Cleaning irregularly formatted data</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                          </ul>
                      </div>
                    </div>
                </div>
            </div>
          </li>
                    <li>
            <div class="cardSize">
                <div class="cardPadding">
                  <div class="card" style="padding: 0 12px 54px 0;">
                      <div class="cardText" style="box-shadow: 0 2px 5px #e8e8e8; border: 1px solid #dbdbdb;">
                          <h3 class="bgdAccent1" style="padding: 8px; display: flex; background: #f2c811; font-weight: bold; border-bottom: 0; margin-bottom: 0; line-height: 42px">
                            <div class="cardImageOuter" style="margin: 0 8px 0 10px;">
                              <div class="cardImage" style="width: 32px;">
                                <img src="media/pbi-dax-intro.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Introduction to DAX
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="introductiontodax.yml?tutorial-step=1">Introduction to DAX</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="introductiontodax.yml?tutorial-step=2">DAX calculation types</a>
                                <span style="margin-left: 32px; align-self: center;">22m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="introductiontodax.yml?tutorial-step=3">DAX functions</a>
                                <span style="margin-left: 32px; align-self: center;">17m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="introductiontodax.yml?tutorial-step=4">Using variables in DAX expressions</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="introductiontodax.yml?tutorial-step=5">Table relationships and DAX</a>
                                <span style="margin-left: 32px; align-self: center;">13m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="introductiontodax.yml?tutorial-step=6">DAX tables and filtering</a>
                                <span style="margin-left: 32px; align-self: center;">32m</span>
                              </li>
                          </ul>
                      </div>
                    </div>
                </div>
            </div>
          </li>
      </ul>
    </div>
</div>