<?php die("Access Denied"); ?>#x#a:2:{s:6:"output";s:0:"";s:6:"result";a:5:{i:0;O:8:"stdClass":3:{s:4:"link";s:113:"http://virtuemart.net/news/latest-news/475-critical-security-leak-in-all-joomla-versions-please-update-immediatly";s:5:"title";s:71:"Critical Security Leak in all Joomla Versions, please update immediatly";s:11:"description";s:1532:"<div><p>The Joomla! team released today a new version with some security hardenings and fixing a critical security leak in all joomla versions.</p>
<p>The critical security leak was already used in the wild. This means it is not a leak, which was disovered by an audit, it is security issue which is already exploited. Sucuri.net blogged about&nbsp;<a href="https://blog.sucuri.net/2015/12/remote-command-execution-vulnerability-in-joomla.html">https://blog.sucuri.net/2015/12/remote-command-execution-vulnerability-in-joomla.html</a></p>
<h4>Protect Your Site Now</h4>
<p>If you are a Joomla user, check your logs right away. Look for requests from&nbsp;<span>146.0.72.83</span>&nbsp;or&nbsp;<span>74.3.170.33</span>or&nbsp;<span>194.28.174.106</span>&nbsp;as they were the first IP addresses to start the exploitation. I also recommend searching your logs for “<span>JDatabaseDriverMysqli</span>” or “<span>O:</span>” in the User Agent as it has been used in the exploits. If you find them, consider your Joomla site compromised and move to the remediation / incident response phase.</p>
<p>For securing your joomla 1.5/2.5 pages, just follow this link&nbsp;<a href="https://docs.joomla.org/Security_hotfixes_for_Joomla_EOL_versions">https://docs.joomla.org/Security_hotfixes_for_Joomla_EOL_versions</a>. It is basically replacing one file.</p>
<p>We post this news, because some of our core members discovered this IPs in his logs. Not a VirtueMart page, but as far as we know it wouldnt make a difference.</p></div>";}i:1;O:8:"stdClass":3:{s:4:"link";s:75:"http://virtuemart.net/news/latest-news/474-point-of-sale-pos-for-virtuemart";s:5:"title";s:28:"Point of Sale for VirtueMart";s:11:"description";s:1793:"<div><p><a href="http://www.posforwebshops.com/?aid=3"><img style="display: block; margin-left: auto; margin-right: auto;" alt="pos for webshops - connect your virtuemart with your brick&amp;mortar store" src="http://virtuemart.net/images/stories/logos/pos_for_webshops.jpg" height="380" width="730" /></a></p>
<p>We are proud to offer the direct link between online and offline sales with VirtueMart &amp; POS for Webshops.</p>
<p>Now there is a complete Point of Sale (POS) available for VirtueMart. When you have a physical store and a VirtueMart webshop you can sell goods with your Point of Sale without giving your sales staff access to the VirtueMart backend. All products / orders / calculation rules / customers will be synchronized into the POS.</p>
<p>The sales staff can check the VirtueMart weborders from the POS and take the goods from the store with the OrderPicker. After an order is picked it will change the order status in Virtuemart automatically into a pre-defined status like “Ready for Shipment”. When new goods arrive from the supplier you can add those to the (VirtueMart) stock just by scanning the product barcode in the Stockmanager.</p>
<p><strong>Some of the Key Features</strong></p>
<ul>
<li>Direct sync with VirtueMart</li>
<li>Easy interface</li>
<li>Different logins</li>
<li>Use VM calculation rules and Shopper Groups</li>
<li>Add customer to an order</li>
<li>Use barcodes to add products to an order.</li>
<li>Customize the sync options with the Payment methods in the POS.</li>
<li>You can print receipts as well as invoices.</li>
<li>Orderpicker and Stockmanger included.</li>
<li>And much more…</li>
</ul>
<div>
<p><a href="http://extensions.virtuemart.net/tools/pos-for-webshops-detail">More Information</a></p>
</div></div>";}i:2;O:8:"stdClass":3:{s:4:"link";s:77:"http://virtuemart.net/news/latest-news/473-security-release-virtuemart-3-0-12";s:5:"title";s:59:"Security Release VirtueMart 3.0.12, plus new goal, new docs";s:11:"description";s:3895:"<div><h3>More Security</h3>
<p>The company Qualys.com found a new issue, a possible XSS. It misuses the array keys in the URL. Most servers prevent such an URL by default, but nevertheless we've added another protection. We also found and fixed some smaller bugs and glitches in advanced functions and last but not least we added missing backward compatibility for some cases. This release follows 3 release candidates with more than 2000 downloads altogether.</p>
<h3>New Goal</h3>
<p>Sticking to the Joomla API has emerged as an unlucky decision for us. The future plan is to write more for our own framework VMF, which will give us the freedom to also use other systems than Joomla. The idea is to write a small framework, so that extensions written for VirtueMart should also work on different platforms than Joomla. In other words, instead of developing a standalone VirtueMart, we will try to write an easily bridgeable VirtueMart. We already saw a VirtueMart running on Drupal, so it can't be too hard. But first we want to look into Wordpress. Of course we will need test users and suggestions from developers who are familiar with Wordpress and VirtueMart. So please join our forum if you have some experience with these. We also think about using the Joomla platform by the team of Johan Janssens&nbsp;<a href="https://github.com/joomlatools/joomla-platform">https://github.com/joomlatools/joomla-platform</a> for our next full installer.</p>
<h3>New Docs</h3>
<p>Due to our membership system <a href="http://extensions.virtuemart.net/support/virtuemart-supporter-membership-detail">http://extensions.virtuemart.net/support/virtuemart-supporter-membership-detail</a> we did find some time to update our manual. We added a lot of pages, which explain general VirtueMart concepts at <a href="http://docs.virtuemart.net/manual/general-concepts.html">http://docs.virtuemart.net/manual/general-concepts.html</a> - It's worthwhile to read them. Even VirtueMart veterans already found some new tricks in it!</p>
<div>
<p><a href="http://virtuemart.net/download">DOWNLOAD VM3 NOW<br /> VirtueMart 3 component (core and AIO)</a></p>
</div>
<p>Some New Features/Fixes:</p>
<ul>
<li>different thumbnail sizes are possible now (actually a fix, but no one knew it anyway, for templates please read here <a href="http://forum.virtuemart.net/index.php?topic=132128.msg456671#msg456671">http://forum.virtuemart.net/index.php?topic=132128.msg456671#msg456671</a>)</li>
<li>cart should keep address data of the user, if an error happens like "email already taken"</li>
<li>use captcha only for guests</li>
<li>Added "None" option for some order status lists.</li>
<li>media handling per vendor</li>
<li>vmUploader checks uploaded files by MIME and may cancell the upload, controlled by ACL</li>
<li>vRequest is now also filtering the array keys (recursive)</li>
<li>enhanced synchronise Media (no 10k limit anylonger)</li>
<li>moved creation of virtuemart_userinfos and virtuemart_order_userinfos to install_essential_data.sql to prevent that changed fields are reverted updating vm</li>
<li>added hidden config updEngine to prevent changing of the table engine</li>
<li>added main controller missing for joomla3 to the AIO</li>
</ul>
<p>The full bug fix list is available here this time: <a href="http://forum.virtuemart.net/index.php?topic=131898.0">http://forum.virtuemart.net/index.php?topic=131898.0</a><a href="http://forum.virtuemart.net/index.php?topic=131898.0"></a></p>
<p>We also updated VirtueMart 2.6. The new version got the security fixes, enhanced payment plugins and uses now mainly the vm3 table layout. It increases noticeable the performance</p>
<h2>Templaters:</h2>
<p>Please read here&nbsp;<a href="http://forum.virtuemart.net/index.php?topic=132128.msg456671#msg456671">http://forum.virtuemart.net/index.php?topic=132128.msg456671#msg456671</a></p></div>";}i:3;O:8:"stdClass":3:{s:4:"link";s:60:"http://virtuemart.net/news/latest-news/472-release-of-3-0-10";s:5:"title";s:17:"Release of 3.0.10";s:11:"description";s:911:"<div><h2>Release of 3.0.10</h2>
<p>The last stable version vm3.0.8 was 5 months ago. Development has continued during this time, we just spent additional time testing and checking to deliver a more stable version.</p>
<p>We added the ajax script to the cart, so that the new cart is almost like an OPC, you will still add/edit addresses in a separate page. It is backward compatible as long any 3rd party developer/templater uses our javascript handler <a href="http://docs.virtuemart.net/tutorials/development/196-the-vm-javascript-handler.html">http://docs.virtuemart.net/tutorials/development/196-the-vm-javascript-handler.html</a></p>
<p>The ACL (Access Control List) has been extensively extended and modified. It now supports seperate settings for frontend and backend management.</p>
<p><a target="_blank" href="http://virtuemart.net/news/latest-news/472-release-of-3-0-10">Read More...</a></p></div>";}i:4;O:8:"stdClass":3:{s:4:"link";s:79:"http://virtuemart.net/news/latest-news/471-summer-promotion-for-amazon-payments";s:5:"title";s:36:"Summer promotion for Amazon Payments";s:11:"description";s:2045:"<div><p> <a href="https://payments.amazon.co.uk/contact?ld=SPDEAP_XIS_VM"><img src="http://virtuemart.net/images/virtuemart/news/amazon-christmas-promotion.png" alt="amazon christmas promotion" style="display: block; margin-left: auto; margin-right: auto; margin-bottom: 15px;" /></a><strong>You still have until the end of this week to secure your first Christmas present! </strong></p>
<p>Amazon Payments have launched their summer promotion, offering merchants their first Christmas present in August.</p>
<p>Merchants that register an account by 15 August and make the payment solution commercially available on their websites by 30 September do not pay any processing fees during December 2015. <a href="http://go.amazonservices.com/XmasSummerUK.html?ld=SPDEAP_XIS_VM" title="Amazon Christmas promotion">More information on the program is  available.</a></p>
<p>Amazon Payments offer payment solutions that enable millions of customers to login to your website and pay with the details stored in their Amazon accounts.</p>
<p>The VirtueMart <em>Pay with Amazon</em> plugin is quick and easy to configure. Widgets ensure that a customer never leaves your site during the checkout process, ensuring a consistent brand experience.&nbsp;A complete tutorial is available to help you to&nbsp;<a href="http://docs.virtuemart.net/manual/shop-menu/payment-methods/pay-with-amazon.html" title="How to configure the Pay with Amazon VirtueMart plugin">configure the plugin</a>.</p>
<p>If you have questions about the <em>Pay with Amazon</em>&nbsp;payment solution, please do not hesitate to contact <a href="https://payments.amazon.co.uk/contact?ld=SPDEAP_XIS_VM" title="Contact amazon payments about the Christmas promotion">Amazon Payments</a>.</p>
<p>The VirtueMart <em>Pay with Amazon</em> plugin is available for VirtueMart Version 2.6.18 compatible with Joomla 2.5 and VirtueMart 3.0.8 compatible with Joomla 2.5 and Joomla 3.</p>
<div>
<p><a href="http://virtuemart.net/download">Download VirtueMart now and Test it</a></p>
</div></div>";}}}