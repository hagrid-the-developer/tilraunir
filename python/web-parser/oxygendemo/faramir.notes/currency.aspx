

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title><link rel="stylesheet" href="css/style.css" type="text/css" />
    <script src="jscripts/jquery-1.8.3.js" type="text/javascript"></script>
    <link href="jscripts/colorbox/colorbox.css" rel="stylesheet" type="text/css" />
    <script src="jscripts/colorbox/jquery.colorbox.js" type="text/javascript"></script>
</head>
<body>
    <form name="form1" method="post" action="Currency.aspx" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEzODM3NzQ1NDUPZBYCAgQPZBYGAgUPEGQPFs8BZgIBAgICAwIEAgUCBgIHAggCCQIKAgsCDAINAg4CDwIQAhECEgITAhQCFQIWAhcCGAIZAhoCGwIcAh0CHgIfAiACIQIiAiMCJAIlAiYCJwIoAikCKgIrAiwCLQIuAi8CMAIxAjICMwI0AjUCNgI3AjgCOQI6AjsCPAI9Aj4CPwJAAkECQgJDAkQCRQJGAkcCSAJJAkoCSwJMAk0CTgJPAlACUQJSAlMCVAJVAlYCVwJYAlkCWgJbAlwCXQJeAl8CYAJhAmICYwJkAmUCZgJnAmgCaQJqAmsCbAJtAm4CbwJwAnECcgJzAnQCdQJ2AncCeAJ5AnoCewJ8An0CfgJ/AoABAoEBAoIBAoMBAoQBAoUBAoYBAocBAogBAokBAooBAosBAowBAo0BAo4BAo8BApABApEBApIBApMBApQBApUBApYBApcBApgBApkBApoBApsBApwBAp0BAp4BAp8BAqABAqEBAqIBAqMBAqQBAqUBAqYBAqcBAqgBAqkBAqoBAqsBAqwBAq0BAq4BAq8BArABArEBArIBArMBArQBArUBArYBArcBArgBArkBAroBArsBArwBAr0BAr4BAr8BAsABAsEBAsIBAsMBAsQBAsUBAsYBAscBAsgBAskBAsoBAssBAswBAs0BAs4BFs8BEAUOVW5pdGVkIEtpbmdkb20FDlVuaXRlZCBLaW5nZG9tZxAFDVVuaXRlZCBTdGF0ZXMFDVVuaXRlZCBTdGF0ZXNnEAUmIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0FJiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tZxAFC0FmZ2hhbmlzdGFuBQtBZmdoYW5pc3RhbmcQBQdBbGJhbmlhBQdBbGJhbmlhZxAFB0FsZ2VyaWEFB0FsZ2VyaWFnEAUOQW1lcmljYW4gU2Ftb2EFDkFtZXJpY2FuIFNhbW9hZxAFBkFuZ29sYQUGQW5nb2xhZxAFCEFuZ3VpbGxhBQhBbmd1aWxsYWcQBRRBbnRpZ3VhIGFuZCBCYXJidWRhIAUUQW50aWd1YSBhbmQgQmFyYnVkYSBnEAUKQXJnZW50aW5hIAUKQXJnZW50aW5hIGcQBQdBcm1lbmlhBQdBcm1lbmlhZxAFBUFydWJhBQVBcnViYWcQBQlBdXN0cmFsaWEFCUF1c3RyYWxpYWcQBQdBdXN0cmlhBQdBdXN0cmlhZxAFCkF6ZXJiYWlqYW4FCkF6ZXJiYWlqYW5nEAUHQmFoYW1hcwUHQmFoYW1hc2cQBQdCYWhyYWluBQdCYWhyYWluZxAFCkJhbmdsYWRlc2gFCkJhbmdsYWRlc2hnEAUIQmFyYmFkb3MFCEJhcmJhZG9zZxAFB0JlbGFydXMFB0JlbGFydXNnEAUHQmVsZ2l1bQUHQmVsZ2l1bWcQBQZCZWxpemUFBkJlbGl6ZWcQBQVCZW5pbgUFQmVuaW5nEAUHQmVybXVkYQUHQmVybXVkYWcQBQZCaHV0YW4FBkJodXRhbmcQBQdCb2xpdmlhBQdCb2xpdmlhZxAFFkJvc25pYSBhbmQgSGVyemVnb3ZpbmEFFkJvc25pYSBhbmQgSGVyemVnb3ZpbmFnEAUIQm90c3dhbmEFCEJvdHN3YW5hZxAFBkJyYXppbAUGQnJhemlsZxAFFkJyaXRpc2ggVmlyZ2luIElzbGFuZHMFFkJyaXRpc2ggVmlyZ2luIElzbGFuZHNnEAUGQnJ1bmVpBQZCcnVuZWlnEAUIQnVsZ2FyaWEFCEJ1bGdhcmlhZxAFDEJ1cmtpbmEgRmFzbwUMQnVya2luYSBGYXNvZxAFB0J1cnVuZGkFB0J1cnVuZGlnEAUIQ2FtZXJvb24FCENhbWVyb29uZxAFBkNhbmFkYQUGQ2FuYWRhZxAFCkNhcGUgVmVyZGUFCkNhcGUgVmVyZGVnEAUOQ2F5bWFuIElzbGFuZHMFDkNheW1hbiBJc2xhbmRzZxAFBENoYWQFBENoYWRnEAUVQ2hhbm5lbHMgSXNsYW5kcyAoVUspBRVDaGFubmVscyBJc2xhbmRzIChVSylnEAUFQ2hpbGUFBUNoaWxlZxAFBUNoaW5hBQVDaGluYWcQBQhDb2xvbWJpYQUIQ29sb21iaWFnEAUHQ29tb3JvcwUHQ29tb3Jvc2cQBQVDb25nbwUFQ29uZ29nEAUaQ29uZ28sIERlbW9jcmF0aWMgUmVwdWJsaWMFGkNvbmdvLCBEZW1vY3JhdGljIFJlcHVibGljZxAFDENvb2sgSXNsYW5kcwUMQ29vayBJc2xhbmRzZxAFC0Nvc3RhIFJpY2EgBQtDb3N0YSBSaWNhIGcQBQhDcm9hdGlhIAUIQ3JvYXRpYSBnEAURQ3lwcnVzIChOb3J0aGVybikFEUN5cHJ1cyAoTm9ydGhlcm4pZxAFE0N5cHJ1cywgUmVwdWJsaWMgb2YFE0N5cHJ1cywgUmVwdWJsaWMgb2ZnEAUOQ3plY2ggUmVwdWJsaWMFDkN6ZWNoIFJlcHVibGljZxAFB0Rlbm1hcmsFB0Rlbm1hcmtnEAUJRGlqaWJvdXRpBQlEaWppYm91dGlnEAUIRG9taW5pY2EFCERvbWluaWNhZxAFEkRvbWluaWNhbiBSZXB1YmxpYwUSRG9taW5pY2FuIFJlcHVibGljZxAFCkVhc3QgVGltb3IFCkVhc3QgVGltb3JnEAUHRWN1YWRvcgUHRWN1YWRvcmcQBQVFZ3lwdAUFRWd5cHRnEAULRWwgU2FsdmFkb3IFC0VsIFNhbHZhZG9yZxAFEUVxdWF0b3JpYWwgR3VpbmVhBRFFcXVhdG9yaWFsIEd1aW5lYWcQBQdFcml0cmVhBQdFcml0cmVhZxAFB0VzdG9uaWEFB0VzdG9uaWFnEAUIRXRoaW9waWEFCEV0aGlvcGlhZxAFDUZhcm9lIElzbGFuZHMFDUZhcm9lIElzbGFuZHNnEAUERmlqaQUERmlqaWcQBQdGaW5sYW5kBQdGaW5sYW5kZxAFFkZpbmxhbmQgKEFsYW5kIElzbGFuZCkFFkZpbmxhbmQgKEFsYW5kIElzbGFuZClnEAUGRnJhbmNlBQZGcmFuY2VnEAUNRnJlbmNoIEd1aWFuYQUNRnJlbmNoIEd1aWFuYWcQBRBGcmVuY2ggUG9seW5lc2lhBRBGcmVuY2ggUG9seW5lc2lhZxAFBkdhYm9uIAUGR2Fib24gZxAFBkdhbWJpYQUGR2FtYmlhZxAFB0dlb3JnaWEFB0dlb3JnaWFnEAUHR2VybWFueQUHR2VybWFueWcQBQVHaGFuYQUFR2hhbmFnEAUJR2licmFsdGFyBQlHaWJyYWx0YXJnEAUGR3JlZWNlBQZHcmVlY2VnEAUJR3JlZW5sYW5kBQlHcmVlbmxhbmRnEAUHR3JlbmFkYQUHR3JlbmFkYWcQBQtHdWFkZWxvdXBlIAULR3VhZGVsb3VwZSBnEAUER3VhbQUER3VhbWcQBQlHdWF0ZW1hbGEFCUd1YXRlbWFsYWcQBQZHdWluZWEFBkd1aW5lYWcQBQZHdXlhbmEFBkd1eWFuYWcQBQVIYWl0aQUFSGFpdGlnEAUISG9uZHVyYXMFCEhvbmR1cmFzZxAFCUhvbmcgS29uZwUJSG9uZyBLb25nZxAFB0h1bmdhcnkFB0h1bmdhcnlnEAUHSWNlbGFuZAUHSWNlbGFuZGcQBQVJbmRpYQUFSW5kaWFnEAUJSW5kb25lc2lhBQlJbmRvbmVzaWFnEAUESXJhcQUESXJhcWcQBQdJcmVsYW5kBQdJcmVsYW5kZxAFBklzcmFlbAUGSXNyYWVsZxAFBUl0YWx5BQVJdGFseWcQBQtJdm9yeSBDb2FzdAULSXZvcnkgQ29hc3RnEAUHSmFtYWljYQUHSmFtYWljYWcQBQVKYXBhbgUFSmFwYW5nEAUGSm9yZGFuBQZKb3JkYW5nEAUKS2F6YWtoc3RhbgUKS2F6YWtoc3RhbmcQBQVLZW55YQUFS2VueWFnEAUGS3V3YWl0BQZLdXdhaXRnEAUKS3lyZ3l6c3RhbgUKS3lyZ3l6c3RhbmcQBQRMYW9zBQRMYW9zZxAFBkxhdHZpYQUGTGF0dmlhZxAFB0xlYmFub24FB0xlYmFub25nEAUOTGVpY2h0ZW5zdGVpbiAFDkxlaWNodGVuc3RlaW4gZxAFB0xlc290aG8FB0xlc290aG9nEAUHTGliZXJpYQUHTGliZXJpYWcQBQlMaXRodWFuaWEFCUxpdGh1YW5pYWcQBQpMdXhlbWJvdXJnBQpMdXhlbWJvdXJnZxAFBU1hY2F1BQVNYWNhdWcQBQlNYWNlZG9uaWEFCU1hY2Vkb25pYWcQBQpNYWRhZ2FzY2FyBQpNYWRhZ2FzY2FyZxAFBk1hbGF3aQUGTWFsYXdpZxAFCE1hbGF5c2lhBQhNYWxheXNpYWcQBQhNYWxkaXZlcwUITWFsZGl2ZXNnEAUETWFsaQUETWFsaWcQBQVNYWx0YQUFTWFsdGFnEAUQTWFyc2hhbGwgSXNsYW5kcwUQTWFyc2hhbGwgSXNsYW5kc2cQBQpNYXJ0aW5pcXVlBQpNYXJ0aW5pcXVlZxAFCk1hdXJpdGFuaWEFCk1hdXJpdGFuaWFnEAUJTWF1cml0aXVzBQlNYXVyaXRpdXNnEAUGTWV4aWNvBQZNZXhpY29nEAUKTWljcm9uZXNpYQUKTWljcm9uZXNpYWcQBQdNb2xkb3ZhBQdNb2xkb3ZhZxAFBk1vbmFjbwUGTW9uYWNvZxAFCE1vbmdvbGlhBQhNb25nb2xpYWcQBQpNb250ZW5lZ3JvBQpNb250ZW5lZ3JvZxAFCk1vbnRzZXJyYXQFCk1vbnRzZXJyYXRnEAUHTW9yb2NjbwUHTW9yb2Njb2cQBQpNb3phbWJpcXVlBQpNb3phbWJpcXVlZxAFB05hbWliaWEFB05hbWliaWFnEAUFTmVwYWwFBU5lcGFsZxAFC05ldGhlcmxhbmRzBQtOZXRoZXJsYW5kc2cQBQ1OZXcgQ2FsZWRvbmlhBQ1OZXcgQ2FsZWRvbmlhZxAFC05ldyBaZWFsYW5kBQtOZXcgWmVhbGFuZGcQBQlOaWNhcmFndWEFCU5pY2FyYWd1YWcQBQVOaWdlcgUFTmlnZXJnEAUHTmlnZXJpYQUHTmlnZXJpYWcQBRhOb3J0aGVybiBNYXJpYW5hIElzbGFuZHMFGE5vcnRoZXJuIE1hcmlhbmEgSXNsYW5kc2cQBQZOb3J3YXkFBk5vcndheWcQBQRPbWFuBQRPbWFuZxAFCFBha2lzdGFuBQhQYWtpc3RhbmcQBQVQYWxhdQUFUGFsYXVnEAUfUGFsZXN0aW5pYW4gVGVycml0b3J5LCBPY2N1cGllZAUfUGFsZXN0aW5pYW4gVGVycml0b3J5LCBPY2N1cGllZGcQBQZQYW5hbWEFBlBhbmFtYWcQBRBQYXB1YSBOZXcgR3VpbmVhBRBQYXB1YSBOZXcgR3VpbmVhZxAFCFBhcmFndWF5BQhQYXJhZ3VheWcQBQRQZXJ1BQRQZXJ1ZxAFC1BoaWxpcHBpbmVzBQtQaGlsaXBwaW5lc2cQBQZQb2xhbmQFBlBvbGFuZGcQBQhQb3J0dWdhbAUIUG9ydHVnYWxnEAULUHVlcnRvIFJpY28FC1B1ZXJ0byBSaWNvZxAFBVFhdGFyBQVRYXRhcmcQBQdSZXVuaW9uBQdSZXVuaW9uZxAFB1JvbWFuaWEFB1JvbWFuaWFnEAUSUnVzc2lhbiBGZWRlcmF0aW9uBRJSdXNzaWFuIEZlZGVyYXRpb25nEAUGUndhbmRhBQZSd2FuZGFnEAUVU2FpbnQgS2l0dHMgYW5kIE5ldmlzBRVTYWludCBLaXR0cyBhbmQgTmV2aXNnEAULU2FpbnQgTHVjaWEFC1NhaW50IEx1Y2lhZxAFIFNhaW50IFZpbmNlbnQgYW5kIHRoZSBHcmVuYWRpbmVzBSBTYWludCBWaW5jZW50IGFuZCB0aGUgR3JlbmFkaW5lc2cQBQVTYW1vYQUFU2Ftb2FnEAUKU2FuIE1hcmlubwUKU2FuIE1hcmlub2cQBRVTYW8gVG9tZSBhbmQgUHJpbmNpcGUFFVNhbyBUb21lIGFuZCBQcmluY2lwZWcQBQxTYXVkaSBBcmFiaWEFDFNhdWRpIEFyYWJpYWcQBQdTZW5lZ2FsBQdTZW5lZ2FsZxAFBlNlcmJpYQUGU2VyYmlhZxAFClNleWNoZWxsZXMFClNleWNoZWxsZXNnEAUJU2luZ2Fwb3JlBQlTaW5nYXBvcmVnEAUPU2xvdmFrIFJlcHVibGljBQ9TbG92YWsgUmVwdWJsaWNnEAUIU2xvdmVuaWEFCFNsb3ZlbmlhZxAFDFNvdXRoIEFmcmljYQUMU291dGggQWZyaWNhZxAFC1NvdXRoIEtvcmVhBQtTb3V0aCBLb3JlYWcQBQVTcGFpbgUFU3BhaW5nEAUZU3BhaW4sIFRoZSBDYW5hcnkgSXNsYW5kcwUZU3BhaW4sIFRoZSBDYW5hcnkgSXNsYW5kc2cQBQlTcmkgTGFua2EFCVNyaSBMYW5rYWcQBQhTdXJpbmFtZQUIU3VyaW5hbWVnEAUJU3dhemlsYW5kBQlTd2F6aWxhbmRnEAUGU3dlZGVuBQZTd2VkZW5nEAULU3dpdHplcmxhbmQFC1N3aXR6ZXJsYW5kZxAFBVN5cmlhBQVTeXJpYWcQBQZUYWl3YW4FBlRhaXdhbmcQBQhUYW56YW5pYQUIVGFuemFuaWFnEAUIVGhhaWxhbmQFCFRoYWlsYW5kZxAFBFRvZ28FBFRvZ29nEAUTVHJpbmlkYWQgYW5kIFRvYmFnbwUTVHJpbmlkYWQgYW5kIFRvYmFnb2cQBQdUdW5pc2lhBQdUdW5pc2lhZxAFBlR1cmtleQUGVHVya2V5ZxAFDFR1cmttZW5pc3RhbgUMVHVya21lbmlzdGFuZxAFGFR1cmtzIGFuZCBDYWljb3MgSXNsYW5kcwUYVHVya3MgYW5kIENhaWNvcyBJc2xhbmRzZxAFBlVnYW5kYQUGVWdhbmRhZxAFB1VrcmFpbmUFB1VrcmFpbmVnEAUUVW5pdGVkIEFyYWIgRW1pcmF0ZXMFFFVuaXRlZCBBcmFiIEVtaXJhdGVzZxAFCFVyYWd1YXkgBQhVcmFndWF5IGcQBQpVemJla2lzdGFuBQpVemJla2lzdGFuZxAFB1ZhbmF1dHUFB1ZhbmF1dHVnEAUSVmF0aWNhbiBDaXR5IFN0YXRlBRJWYXRpY2FuIENpdHkgU3RhdGVnEAUJVmVuZXp1ZWxhBQlWZW5lenVlbGFnEAUHVmlldG5hbQUHVmlldG5hbWcQBRVWaXJpZ24gSXNsYW5kcyAoVS5TLikFFVZpcmlnbiBJc2xhbmRzIChVLlMuKWcQBRlXYWxsaXMgYW5kIEZ1dHVuYSBJc2xhbmRzBRlXYWxsaXMgYW5kIEZ1dHVuYSBJc2xhbmRzZxAFBVllbWVuBQVZZW1lbmcQBQZaYW1iaWEFBlphbWJpYWcQBQhaaW1iYWJ3ZQUIWmltYmFid2VnZGQCBw8QZA8WDWYCAQICAgMCBAIFAgYCBwIIAgkCCgILAgwWDRAFD1VTIERvbGxhciAoVVNEKQUkNTAzMzI5QzYtNDBDQi00N0U2LTkxRDEtOUYxMUFGNjNGNzA2ZxAFF0F1c3RyYWxpYW4gRG9sbGFyIChBVUQpBSRFNUYyNkMxNi01RTQ3LTRFNEUtOUUzNS0xNjZEOUUxNzVGOTFnEAUVQ2FuYWRpYW4gRG9sbGFyIChDQUQpBSRFMkQxRTg1MC03ODM2LTRDOTgtODZERS0zNzVCNkVBQ0NDOUFnEAUSRGFuaXNoIEtyb25lIChES0spBSRCQzU2QTY4Ri05RTE5LTRGRjktQTQzNC1BMDZBQTczNjY0MUZnEAULRXVyb3MgKEVVUikFJGIyZGQ2ZTVkLTUzMzYtNDE5NS1iOTY2LTJjODFkMmIzNDg5N2cQBRZIb25nIEtvbmcgRG9sbGFyIChIS0QpBSQ2NTM0Q0M3Ri1BMTQ5LTQ4M0YtQUU3Mi1EM0Q3QzJGRDNDRjNnEAUSSmFwYW5lc2UgWWVuIChKUFkpBSQwRUJGMjRCOC05OEVDLTQ3MTQtQkU0MC04NTAzOTM2NTNFODJnEAUYTmV3IFplYWxhbmQgRG9sbGFyIChOWkQpBSQwQ0RCN0E0Ni0zMTc4LTRCMzktQTBBQy00NkMxRUYxQ0ZBQjZnEAUVTm9yd2VnaWFuIEtyb25lIChOT0spBSQ5MTg3RjdDOC0yQzM1LTQwMzMtQUVCMy1FODE1MTNFNjkzQUVnEAUTUG91bmQgU3RlcmxpbmcoR0JQKQUkYjJkZDZlNWQtNTMzNi00MTk1LWI5NjYtMmM4MWQyYjM0ODk5ZxAFGFNvdXRoIEFmcmljYW4gUmFuZCAoWkFSKQUkNkYyRjlDRTAtQTlBMC00NDRBLUE0REUtNURBQzBERTdCRjM2ZxAFE1N3ZWRpc2ggS3JvbmEgKFNFSykFJEY4QzA4NzRFLUY1REItNEFCMy1BNUNFLUU4RTlDMTYwNjM0QWcQBRFTd2lzcyBGcmFuYyAoQ0hGKQUkN0VCNDk1ODEtREY1OS00QjMzLTkyQUMtNTUxNUUyMjFDMUVDZ2RkAgkPFgIeA3NyYwVfL0dldEltYWdlL2R6MHlNRFVtYUQwek5EZ21RM1Z5Y2tsdFp6MHhNRGd3TTJObFl5MWtNalprTFRRME1qRXRPRE00WXkxbU56Y3lZakJsWkRBNFl6SXVhbkJuMC5qcGdkZIeEvaetR5C4h0QOHl1tTE8=" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B541BF03" />
    <div class="Pop">
        <table border="0" cellpadding="0" cellspacing="0" style="padding: 37px 0px 0px 35px;">
            <tr>
                <td style="width: 560px; height: 348px;">
                    <div class="bnPersonal">
                        <img src="images/personalise.png" alt="" border="0" /></div>
                    <div class="bnSave">
                        <a id="lnkCurrency" href="javascript:__doPostBack(&#39;lnkCurrency&#39;,&#39;&#39;)">
                <img src="images/bn-save.jpg" alt="" border="0" /></a>
                    </div>
                    <div class="bnClose">
                        <a id="lnkClose" title="Close" href="javascript:__doPostBack(&#39;lnkClose&#39;,&#39;&#39;)"><img src="images/CloseButton.jpg" alt="Close" border="0" /></a>
                    </div>
                    <div class="CurrencyFields">
                        <table id="table1" cellpadding="0" cellspacing="0" border="0" width="580" class="curr_tab">
                            <tr>
                                <td align="left" width="50%" valign="middle">
                                    Select Location
                                </td>
                                <td align="left" width="50%" valign="middle">
                                    Select Currency
                                </td>
                            </tr>
                            <tr>
                                <td align="left" width="50%">
                                    <select name="ddlCountry1" id="ddlCountry1">
	<option selected="selected" value="United Kingdom">United Kingdom</option>
	<option value="United States">United States</option>
	<option value=" -------------------------------------" style="font-weight:bold;" disabled="true"> -------------------------------------</option>
	<option value="Afghanistan">Afghanistan</option>
	<option value="Albania">Albania</option>
	<option value="Algeria">Algeria</option>
	<option value="American Samoa">American Samoa</option>
	<option value="Angola">Angola</option>
	<option value="Anguilla">Anguilla</option>
	<option value="Antigua and Barbuda ">Antigua and Barbuda </option>
	<option value="Argentina ">Argentina </option>
	<option value="Armenia">Armenia</option>
	<option value="Aruba">Aruba</option>
	<option value="Australia">Australia</option>
	<option value="Austria">Austria</option>
	<option value="Azerbaijan">Azerbaijan</option>
	<option value="Bahamas">Bahamas</option>
	<option value="Bahrain">Bahrain</option>
	<option value="Bangladesh">Bangladesh</option>
	<option value="Barbados">Barbados</option>
	<option value="Belarus">Belarus</option>
	<option value="Belgium">Belgium</option>
	<option value="Belize">Belize</option>
	<option value="Benin">Benin</option>
	<option value="Bermuda">Bermuda</option>
	<option value="Bhutan">Bhutan</option>
	<option value="Bolivia">Bolivia</option>
	<option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
	<option value="Botswana">Botswana</option>
	<option value="Brazil">Brazil</option>
	<option value="British Virgin Islands">British Virgin Islands</option>
	<option value="Brunei">Brunei</option>
	<option value="Bulgaria">Bulgaria</option>
	<option value="Burkina Faso">Burkina Faso</option>
	<option value="Burundi">Burundi</option>
	<option value="Cameroon">Cameroon</option>
	<option value="Canada">Canada</option>
	<option value="Cape Verde">Cape Verde</option>
	<option value="Cayman Islands">Cayman Islands</option>
	<option value="Chad">Chad</option>
	<option value="Channels Islands (UK)">Channels Islands (UK)</option>
	<option value="Chile">Chile</option>
	<option value="China">China</option>
	<option value="Colombia">Colombia</option>
	<option value="Comoros">Comoros</option>
	<option value="Congo">Congo</option>
	<option value="Congo, Democratic Republic">Congo, Democratic Republic</option>
	<option value="Cook Islands">Cook Islands</option>
	<option value="Costa Rica ">Costa Rica </option>
	<option value="Croatia ">Croatia </option>
	<option value="Cyprus (Northern)">Cyprus (Northern)</option>
	<option value="Cyprus, Republic of">Cyprus, Republic of</option>
	<option value="Czech Republic">Czech Republic</option>
	<option value="Denmark">Denmark</option>
	<option value="Dijibouti">Dijibouti</option>
	<option value="Dominica">Dominica</option>
	<option value="Dominican Republic">Dominican Republic</option>
	<option value="East Timor">East Timor</option>
	<option value="Ecuador">Ecuador</option>
	<option value="Egypt">Egypt</option>
	<option value="El Salvador">El Salvador</option>
	<option value="Equatorial Guinea">Equatorial Guinea</option>
	<option value="Eritrea">Eritrea</option>
	<option value="Estonia">Estonia</option>
	<option value="Ethiopia">Ethiopia</option>
	<option value="Faroe Islands">Faroe Islands</option>
	<option value="Fiji">Fiji</option>
	<option value="Finland">Finland</option>
	<option value="Finland (Aland Island)">Finland (Aland Island)</option>
	<option value="France">France</option>
	<option value="French Guiana">French Guiana</option>
	<option value="French Polynesia">French Polynesia</option>
	<option value="Gabon ">Gabon </option>
	<option value="Gambia">Gambia</option>
	<option value="Georgia">Georgia</option>
	<option value="Germany">Germany</option>
	<option value="Ghana">Ghana</option>
	<option value="Gibraltar">Gibraltar</option>
	<option value="Greece">Greece</option>
	<option value="Greenland">Greenland</option>
	<option value="Grenada">Grenada</option>
	<option value="Guadeloupe ">Guadeloupe </option>
	<option value="Guam">Guam</option>
	<option value="Guatemala">Guatemala</option>
	<option value="Guinea">Guinea</option>
	<option value="Guyana">Guyana</option>
	<option value="Haiti">Haiti</option>
	<option value="Honduras">Honduras</option>
	<option value="Hong Kong">Hong Kong</option>
	<option value="Hungary">Hungary</option>
	<option value="Iceland">Iceland</option>
	<option value="India">India</option>
	<option value="Indonesia">Indonesia</option>
	<option value="Iraq">Iraq</option>
	<option value="Ireland">Ireland</option>
	<option value="Israel">Israel</option>
	<option value="Italy">Italy</option>
	<option value="Ivory Coast">Ivory Coast</option>
	<option value="Jamaica">Jamaica</option>
	<option value="Japan">Japan</option>
	<option value="Jordan">Jordan</option>
	<option value="Kazakhstan">Kazakhstan</option>
	<option value="Kenya">Kenya</option>
	<option value="Kuwait">Kuwait</option>
	<option value="Kyrgyzstan">Kyrgyzstan</option>
	<option value="Laos">Laos</option>
	<option value="Latvia">Latvia</option>
	<option value="Lebanon">Lebanon</option>
	<option value="Leichtenstein ">Leichtenstein </option>
	<option value="Lesotho">Lesotho</option>
	<option value="Liberia">Liberia</option>
	<option value="Lithuania">Lithuania</option>
	<option value="Luxembourg">Luxembourg</option>
	<option value="Macau">Macau</option>
	<option value="Macedonia">Macedonia</option>
	<option value="Madagascar">Madagascar</option>
	<option value="Malawi">Malawi</option>
	<option value="Malaysia">Malaysia</option>
	<option value="Maldives">Maldives</option>
	<option value="Mali">Mali</option>
	<option value="Malta">Malta</option>
	<option value="Marshall Islands">Marshall Islands</option>
	<option value="Martinique">Martinique</option>
	<option value="Mauritania">Mauritania</option>
	<option value="Mauritius">Mauritius</option>
	<option value="Mexico">Mexico</option>
	<option value="Micronesia">Micronesia</option>
	<option value="Moldova">Moldova</option>
	<option value="Monaco">Monaco</option>
	<option value="Mongolia">Mongolia</option>
	<option value="Montenegro">Montenegro</option>
	<option value="Montserrat">Montserrat</option>
	<option value="Morocco">Morocco</option>
	<option value="Mozambique">Mozambique</option>
	<option value="Namibia">Namibia</option>
	<option value="Nepal">Nepal</option>
	<option value="Netherlands">Netherlands</option>
	<option value="New Caledonia">New Caledonia</option>
	<option value="New Zealand">New Zealand</option>
	<option value="Nicaragua">Nicaragua</option>
	<option value="Niger">Niger</option>
	<option value="Nigeria">Nigeria</option>
	<option value="Northern Mariana Islands">Northern Mariana Islands</option>
	<option value="Norway">Norway</option>
	<option value="Oman">Oman</option>
	<option value="Pakistan">Pakistan</option>
	<option value="Palau">Palau</option>
	<option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
	<option value="Panama">Panama</option>
	<option value="Papua New Guinea">Papua New Guinea</option>
	<option value="Paraguay">Paraguay</option>
	<option value="Peru">Peru</option>
	<option value="Philippines">Philippines</option>
	<option value="Poland">Poland</option>
	<option value="Portugal">Portugal</option>
	<option value="Puerto Rico">Puerto Rico</option>
	<option value="Qatar">Qatar</option>
	<option value="Reunion">Reunion</option>
	<option value="Romania">Romania</option>
	<option value="Russian Federation">Russian Federation</option>
	<option value="Rwanda">Rwanda</option>
	<option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
	<option value="Saint Lucia">Saint Lucia</option>
	<option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
	<option value="Samoa">Samoa</option>
	<option value="San Marino">San Marino</option>
	<option value="Sao Tome and Principe">Sao Tome and Principe</option>
	<option value="Saudi Arabia">Saudi Arabia</option>
	<option value="Senegal">Senegal</option>
	<option value="Serbia">Serbia</option>
	<option value="Seychelles">Seychelles</option>
	<option value="Singapore">Singapore</option>
	<option value="Slovak Republic">Slovak Republic</option>
	<option value="Slovenia">Slovenia</option>
	<option value="South Africa">South Africa</option>
	<option value="South Korea">South Korea</option>
	<option value="Spain">Spain</option>
	<option value="Spain, The Canary Islands">Spain, The Canary Islands</option>
	<option value="Sri Lanka">Sri Lanka</option>
	<option value="Suriname">Suriname</option>
	<option value="Swaziland">Swaziland</option>
	<option value="Sweden">Sweden</option>
	<option value="Switzerland">Switzerland</option>
	<option value="Syria">Syria</option>
	<option value="Taiwan">Taiwan</option>
	<option value="Tanzania">Tanzania</option>
	<option value="Thailand">Thailand</option>
	<option value="Togo">Togo</option>
	<option value="Trinidad and Tobago">Trinidad and Tobago</option>
	<option value="Tunisia">Tunisia</option>
	<option value="Turkey">Turkey</option>
	<option value="Turkmenistan">Turkmenistan</option>
	<option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
	<option value="Uganda">Uganda</option>
	<option value="Ukraine">Ukraine</option>
	<option value="United Arab Emirates">United Arab Emirates</option>
	<option value="Uraguay ">Uraguay </option>
	<option value="Uzbekistan">Uzbekistan</option>
	<option value="Vanautu">Vanautu</option>
	<option value="Vatican City State">Vatican City State</option>
	<option value="Venezuela">Venezuela</option>
	<option value="Vietnam">Vietnam</option>
	<option value="Virign Islands (U.S.)">Virign Islands (U.S.)</option>
	<option value="Wallis and Futuna Islands">Wallis and Futuna Islands</option>
	<option value="Yemen">Yemen</option>
	<option value="Zambia">Zambia</option>
	<option value="Zimbabwe">Zimbabwe</option>

</select>
                                </td>
                                <td align="left" width="50%">
                                    <select name="ddlCurrency" id="ddlCurrency">
	<option value="503329C6-40CB-47E6-91D1-9F11AF63F706">US Dollar (USD)</option>
	<option value="E5F26C16-5E47-4E4E-9E35-166D9E175F91">Australian Dollar (AUD)</option>
	<option value="E2D1E850-7836-4C98-86DE-375B6EACCC9A">Canadian Dollar (CAD)</option>
	<option value="BC56A68F-9E19-4FF9-A434-A06AA736641F">Danish Krone (DKK)</option>
	<option value="b2dd6e5d-5336-4195-b966-2c81d2b34897">Euros (EUR)</option>
	<option value="6534CC7F-A149-483F-AE72-D3D7C2FD3CF3">Hong Kong Dollar (HKD)</option>
	<option value="0EBF24B8-98EC-4714-BE40-850393653E82">Japanese Yen (JPY)</option>
	<option value="0CDB7A46-3178-4B39-A0AC-46C1EF1CFAB6">New Zealand Dollar (NZD)</option>
	<option value="9187F7C8-2C35-4033-AEB3-E81513E693AE">Norwegian Krone (NOK)</option>
	<option selected="selected" value="b2dd6e5d-5336-4195-b966-2c81d2b34899">Pound Sterling(GBP)</option>
	<option value="6F2F9CE0-A9A0-444A-A4DE-5DAC0DE7BF36">South African Rand (ZAR)</option>
	<option value="F8C0874E-F5DB-4AB3-A5CE-E8E9C160634A">Swedish Krona (SEK)</option>
	<option value="7EB49581-DF59-4B33-92AC-5515E221C1EC">Swiss Franc (CHF)</option>

</select>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td style="width: 205px; height: 348px;">
                    <img src="/GetImage/dz0yMDUmaD0zNDgmQ3VyckltZz0xMDgwM2NlYy1kMjZkLTQ0MjEtODM4Yy1mNzcyYjBlZDA4YzIuanBn0.jpg" id="imgRight" border="0" style=" width: 205px;" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
