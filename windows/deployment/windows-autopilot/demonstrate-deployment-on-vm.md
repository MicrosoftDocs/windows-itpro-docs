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
                                <img src="https://docs.microsoft.com/media/common/i_deploy.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
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
                                <img src="media/pbi-modeling.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Modeling
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=1">Introduction to modeling your data</a>
                                <span style="margin-left: 32px; align-self: center;">3m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=2">How to manage your data relationships</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=3">Create calculated columns</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=4">Optimizing data models</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=5">Create calculated measures</a>
                                <span style="margin-left: 32px; align-self: center;">14m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=6">Create calculated tables</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="modeling.yml?tutorial-step=7">Explore your time-based data</a>
                                <span style="margin-left: 32px; align-self: center;">6m</span>
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
                                <img src="media/pbi-visualizations.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Visualizations
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=1">Introduction to visuals in Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=2">Create and customize simple visualizations</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=3">Combination charts</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=4">Slicers</a>
                                <span style="margin-left: 32px; align-self: center;">7m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=5">Map visualizations</a>
                                <span style="margin-left: 32px; align-self: center;">11m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=6">Matrixes and tables</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=7">Scatter charts</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=8">Waterfall and funnel charts</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=9">Gauges and single-number cards</a>
                                <span style="margin-left: 32px; align-self: center;">7m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=10">Modify colors in charts and visuals</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=11">Shapes, text boxes, and images</a>
                                <span style="margin-left: 32px; align-self: center;">6m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=12">Page layout and formatting</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=13">Group interactions among visualizations</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=14">Duplicate a report page</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=15">Show categories with no data</a>
                                <span style="margin-left: 32px; align-self: center;">3m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=16">Summarization and category options</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=17">Z-order</a>
                                <span style="margin-left: 32px; align-self: center;">3m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=18">Visual hierarchies and drill-down</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="visualizations.yml?tutorial-step=19">R integration in Power BI Desktop</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
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
                                <img src="media/pbi-exploring-data.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Exploring data
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=1">Introduction to the Power BI service</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=2">Quick insights in Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=3">Create and configure a dashboard</a>
                                <span style="margin-left: 32px; align-self: center;">6m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=4">Ask questions of your data with natural language</a>
                                <span style="margin-left: 32px; align-self: center;">9m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=5">Create custom Q&amp;A suggestions</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=6">Share dashboards with your organization</a>
                                <span style="margin-left: 32px; align-self: center;">7m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=7">Display visuals and tiles full-screen</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=8">Edit tile details and add widgets</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=9">Get more space on your dashboard</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="exploringdata.yml?tutorial-step=10">Install and configure a personal gateway</a>
                                <span style="margin-left: 32px; align-self: center;">11m</span>
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
                                <img src="media/logo_excel-blk.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Power BI and Excel
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="powerbiandexcel.yml?tutorial-step=1">Introduction to using Excel data in Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="powerbiandexcel.yml?tutorial-step=2">Upload Excel data to Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="powerbiandexcel.yml?tutorial-step=3">Import Power View and Power Pivot to Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="powerbiandexcel.yml?tutorial-step=4">Connect OneDrive for Business to Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">8m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="powerbiandexcel.yml?tutorial-step=5">Excel in Power BI - summary</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
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
                                <img src="media/pbi-pub-sharing.svg" alt="" data-linktype="absolute-path" class="x-hidden-focus" style="position: relative; top: 6px;">
                              </div>
                            </div>
                            Publishing and sharing
                          </h3>
                          <ul class="noBullet" style="margin: 24px;">
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=1">Introduction to content packs, security, and groups</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=2">Publish Power BI Desktop reports</a>
                                <span style="margin-left: 32px; align-self: center;">2m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=3">Print and export dashboards and reports</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=4">Manually republish and refresh your data</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=5">Introducing Power BI Mobile</a>
                                <span style="margin-left: 32px; align-self: center;">7m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=6">Create groups in Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=7">Build content packs</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=8">Use content packs</a>
                                <span style="margin-left: 32px; align-self: center;">7m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=9">Update content packs</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=10">Integrate OneDrive for Business with Power BI</a>
                                <span style="margin-left: 32px; align-self: center;">3m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=11">Publish to web</a>
                                <span style="margin-left: 32px; align-self: center;">5m</span>
                              </li>
                              <li style="display: flex; justify-content: space-between;">
                                <a class="barLink" href="publishingandsharing.yml?tutorial-step=12">Completion of Power BI Guided Learning</a>
                                <span style="margin-left: 32px; align-self: center;">4m</span>
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

	
	 
	 
	 
	 
	
	
	
	  
	 
	
