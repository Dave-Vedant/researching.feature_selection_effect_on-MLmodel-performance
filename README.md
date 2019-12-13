<!-- wp:image {"id":421,"width":733,"height":160,"sizeSlug":"large","className":"is-style-default"} -->
<figure class="wp-block-image size-large is-resized is-style-default"><img src="https://vedantdave117com.files.wordpress.com/2019/12/1-s2.0-s0957417417301951-gr1-1.jpg?w=711" alt="" class="wp-image-421" width="733" height="160"/><figcaption>Feature Selection imporves  ML ability.</figcaption></figure>
<!-- /wp:image -->

<!-- wp:heading -->
<h2> <strong>Importance of Project Idea:</strong></h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">In machine learning the critical problem is to identify (measure) computational complexity, became it affects the computational power required for any machine learning project with the concern of model performance, time of train /test sets.&nbsp;</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">In the world of cloud computing, online platforms such as (AWS, GCP, IBM Watson) charged according to usage time. Implement of feature selection reduces the features by identifying the major responsible features for the label decision process. Considering such features nor only reduces our matrix size but also improves the model confidence level.&nbsp;</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2><strong>How</strong> to Implement:</h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">In this project, I will mee three algorithms which are widely mee in modern Machine learning algorithms</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(1) Support vector Machine.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(2) Random Forest (Improved AVG. Decision Tree)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>(3) K Nearest Neighbor Algorithm.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">And make a combination of them with best-related feature selection method from feature selection methods</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>&nbsp;(1) UDFS (<strong>Unsupervised Discriminative Feature Selection</strong>)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>&nbsp;(2) CFS (<strong>Correlation Based Feature Selection</strong>)</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>&nbsp;(3) LLCFS.&nbsp;(<strong>Low Rank Correlation Based Feature Selection)</strong></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>The codes presented by me only include the most accurate and final-result.</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2><strong>ML Pipeline:</strong></h2>
<!-- /wp:heading -->

<!-- wp:image {"id":397,"width":587,"height":342,"sizeSlug":"full"} -->
<figure class="wp-block-image size-full is-resized"><img src="https://vedantdave117com.files.wordpress.com/2019/12/image.png" alt="" class="wp-image-397" width="587" height="342"/></figure>
<!-- /wp:image -->

<!-- wp:heading -->
<h2><strong>Implementation Summary:</strong></h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>The given data set is given by Professor is about Gear Dataset. With different missing value patterns, so first data preprocessing is required and then needs to identify our target with the most correlated features. Reduction in dimension to training the algorithm faster, with better accuracy. For CFS and UDFS feature selection I mee python predefined library. Unfortunately, LLCFS hasn’t the same case. My try to make own code can not run Ill. To deal with this I mee MATLAB feature selection library and after deciding no. of important features I import data to google clolab form MATLAB and mee python algorithm for performance evaluation.&nbsp;</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2><strong>Other Focus Areas:</strong></h2>
<!-- /wp:heading -->

<!-- wp:heading {"level":3} -->
<h3><strong>Data Preprocessing:</strong></h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size"><strong>Why? …&nbsp;</strong></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">The given raw dataset was incomplete, inconsistent, and/or lacking in certain behaviors or trends, and is likely to contain many errors. So it is required for project concern to identify missing values, Integrate them, Data transformation if required (not for this project), normalize distribution, and then data reduction. I mee data cleaning, missing value imputation and min-max normalization for applying feature selection techniques.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->
<h3><strong>· 10-fold Process:&nbsp;</strong></h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">This method is rquired for ML algorithm’s training effectiveness access to be verifying model’s overfitting / Underfitting nature. By the 10-fold verification process, I will take the average value of accuracy and F1 score measurement.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"fontSize":"medium"} -->
<p class="has-medium-font-size">Please see my GitHub Repository for the codes.&nbsp;</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>CFS with (Random Forest, KNN, SVM)</li><li>UDFS with (Random Forest, KNN, SVM)</li><li>LLCFS (.m file, with separate implemented algorithms.</li></ul>
<!-- /wp:list -->

<!-- wp:heading {"level":3} -->
<h3><strong>Attachments:</strong></h3>
<!-- /wp:heading -->

<!-- wp:list -->
<ul><li>Evaluation Table</li><li>Final Report</li><li>Project idea discussion Presentation Demo</li></ul>
<!-- /wp:list -->

<!-- wp:heading -->
<h2>Conclusion</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->
