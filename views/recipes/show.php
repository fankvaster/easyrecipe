<?php

use yii\helpers\Html;

?>
<?php if ($query != null): ?>
<h2>Вот что нам удалось найти:</h2>
<p>
<?php
foreach ($query as $recipes) {
    echo $recipes->recipe . '<br>';
}
?>

	<p>
        <?= Html::a('Попробовать снова', ['form'], ['class' => 'btn btn-success']) ?>
    </p>

</p>
<?php else: ?>
<h2>К сожалению, мы ничего не нашли =(</h2>
	<p>
        <?= Html::a('Попробовать снова', ['form'], ['class' => 'btn btn-success']) ?>
    </p>
<?php endif ?>