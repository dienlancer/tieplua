<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class SitemapRender extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sitemap:auto';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Auto create sitemap.xml';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $sitemap = \App::make("sitemap");
        $articles = \DB::table('article')->orderBy('created_at', 'desc')->select('alias','updated_at')->get();
        echo "<pre>".print_r($articles,true)."</pre>";
        foreach ($articles as $article)
        {
            $sitemap->add($article->alias . '.html', $article->updated_at, 0.9, 'monthly'); //daily
        }
        $sitemap->store('xml', 'sitemap');
    }
}
