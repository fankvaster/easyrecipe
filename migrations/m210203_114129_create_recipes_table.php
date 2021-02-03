<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%recipes}}`.
 */
class m210203_114129_create_recipes_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%recipes}}', [
            'id' => $this->primaryKey(),
            'product_id' => $this->integer(11),
            'product_name' => $this->string(255),
            'recipe' => $this->text(),
        ]);

        $this->createIndex(
            'idx-recipes-product_id',
            'recipes',
            'product_id'
        );

        $this->createIndex(
            'idx-recipes-product_name',
            'recipes',
            'product_name'
        );

        $this->addForeignKey(
            'fk-recipes-product_id',
            'recipes',
            'product_id',
            'products',
            'id',
            'CASCADE'
        );

        $this->addForeignKey(
            'fk-recipes-product_name',
            'recipes',
            'product_name',
            'products',
            'product_name',
            'CASCADE'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropForeignKey(
            'fk-recipes-product_id',
            'recipes'
        );

        $this->dropIndex(
            'idx-recipes-product_id',
            'recipes'
        );

        $this->dropForeignKey(
            'fk-recipes-product_name',
            'recipes'
        );

        $this->dropIndex(
            'idx-recipes-product_name',
            'recipes'
        );

        $this->dropTable('{{%recipes}}');
    }
}
