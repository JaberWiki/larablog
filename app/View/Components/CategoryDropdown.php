<?php

namespace App\View\Components;

use App\Models\Category;
use Illuminate\View\Component;

class CategoryDropdown extends Component
{
    public function render()
    {
        return view('components.category-dropdown',[
            'cat' => Category::all(),            
            'currentCat' => Category::firstWhere('slug', request('category'))
        ]);
    }
}
