<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>

<?php $form = ActiveForm::begin() ?>

<h3>Перечислите продукты через пробел, без запятых</h3>

<?= $form->field($model, 'product_name')->textarea() ?>

<?= Html::submitButton('Найти', ['class' => 'btn btn-primary']) ?>

<?php ActiveForm::end() ?>