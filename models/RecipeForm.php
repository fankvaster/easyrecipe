<?php

namespace app\models;

use yii\base\Model;

class RecipeForm extends Model
{
    public $product_name;

    public function rules()
    {
        return [
            ['product_name', 'required'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'product_name' => 'Продукты',
        ];
    }
}
