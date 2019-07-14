@extends('layouts.email')

@section('content')
    <tr>
        <td  class="main-header" style="color: #484848; font-size: 14px; font-weight: normal; font-family: Helvetica, Arial, sans-serif;">
            Hai, <b>{{ucwords(@$contact['name'])}}</b>
        </td>
    </tr>
    <tr><td height="10"></td></tr>
    <tr>
        <td>
            Terima kasih telah menghubungi <b>Kincat Site</b>. Berikut ini pertanyaan anda :
        </td>
    </tr>
    <tr><td height="20"></td></tr>
    <tr>
        <td>{{@$contact['message']}}</td>
    </tr>
    <tr><td height="20"></td></tr>
    <tr>
        <td>
            Mohon menunggu staff kami untuk meresponse pertanyaan anda.
        </td>
    </tr>
@endsection
