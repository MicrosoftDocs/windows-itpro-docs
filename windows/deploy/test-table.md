---
title: Test table
description: Test table
ms.assetid: DFEFE22C-4FEF-4FD9-BFC4-9B419C339502
keywords: deploy, error, troubleshoot, windows, 10
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
localizationpriority: high
---

# Test table

<TABLE cellspacing=0 cellpadding=0>
<TR><TD colspan=2 align="center" valign="top" BGCOLOR="#a0e4fa"><B>Phase codes</B></TD>
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><b>Hex</b><TD style='padding:0in 5.4pt 0in 5.4pt;width:1pt'><span style='width:100px;padding:0in 1pt 0in 1pt;'><b>Phase</b>
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>0<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_UNKNOWN
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_DOWNLEVEL
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>2<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_SAFE_OS
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>3<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>4<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>5<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_UNINSTALL
</TABLE>

<TABLE border=0 cellspacing=0 cellpadding=0 style='border-collapse:collapse;border:none'>
<TR><TD colspan=2 align="center" valign="top" BGCOLOR="#a0e4fa"><B>Extend codes</B></TD>
<TR><TD align="left" valign="top" style='border:dotted #A6A6A6 1.0pt;'>
<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><b>Hex</b><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='width:200pt;padding:0in 5.4pt 0in 5.4pt;'><b>Operation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>0<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_UNKNOWN
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_COPY_PAYLOAD
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>2<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_DOWNLOAD_UPDATES
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>3<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_UPDATES
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>4<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_RECOVERY_ENVIRONMENT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>5<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_RECOVERY_IMAGE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>6<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_REPLICATE_OC
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>7<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_INSTALL_DRVIERS
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>8<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_SAFE_OS
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>9<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_ROLLBACK
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>A<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>B<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PREPARE_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>C<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_APPLY_IMAGE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>D<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_MIGRATE_DATA
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>E<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_SET_PRODUCT_KEY
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>F<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ADD_UNATTEND
</TABLE>
</TD>
<TD align="left" valign="top" style='border:dotted #A6A6A6 1.0pt;'>
<TABLE cellspacing=0 cellpadding=0>
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><b>Hex</b><TD style='padding:0in 4pt 0in 4pt;width:1pt'><b>Operation</b>
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>10<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ADD_DRIVER
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>11<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ENABLE_FEATURE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>12<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_DISABLE_FEATURE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>13<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_REGISTER_ASYNC_PROCESS
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>14<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_REGISTER_SYNC_PROCESS
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>15<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_CREATE_FILE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>16<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_CREATE_REGISTRY
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>17<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>18<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_SYSPREP
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>19<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_OOBE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1A<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_BEGIN_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1B<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_END_FIRST_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1C<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_BEGIN_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1D<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_END_OOBE_BOOT
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1E<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_PRE_OOBE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>1F<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_POST_OOBE
<TR><TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>20<TD style='padding:0in 4pt 0in 4pt;width:1pt'><span style='font-size:9.0pt'>SP_EXECUTION_OP_ADD_PROVISIONING_PACKAGE
</TABLE>
</TD>
</TR>
</TABLE>