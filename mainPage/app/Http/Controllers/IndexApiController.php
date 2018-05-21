<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request;

class IndexApiController extends Controller
{
    /**
     * @param Request $request
     * @return string
     * 返回主页API数据
     */
    public function getIndex(Request $request)
    {
        $types = DB::table('web_types')->get();
        $data = [];
        foreach ($types as $k => $v) {
            $webs = DB::table('web_names')->where('webType', $v->id)->get();
            array_push($data, [$v->typeName => $webs]);
        }
        return $this->formate(0,'',$data);
    }

    /**
     * @param $code
     * @param $msg
     * @param $data
     * @return array
     * 格式化返回
     */
    private function formate($code, $msg, $data)
    {
        return ['code' => $code, 'msg' => $msg, 'data' => $data];
    }
}