<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <style type="text/css">
        TABLE {
            width: 300px; /* Ширина таблицы */
            border-collapse: collapse; /* Убираем двойные линии между ячейками */
        }

        TD, TH {
            padding: 3px; /* Поля вокруг содержимого таблицы */
            border: 1px solid black; /* Параметры рамки */
        }

        TH {
            background: #b0e0e6; /* Цвет фона */
        }
    </style>
    <div class="form-group">
        <h2>User Pack</h2>
        <b>Name: </b>${pack.name!}<br>
        <b>Like: </b>${pack.likes!}<br>
        <b>Date created: </b>${time!}<br>
    </div>
    <a class="btn btn-primary my-2" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Add new Card
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post">
                <div class="form-group">
                    <input type="text" name="question" class="form-control"
                           placeholder="Введите вопрос" size="30"/>
                </div>
                <div class="form-group">
                    <input type="text" name="answer" class="form-control" placeholder="Введите ответ" size="30"/>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Создать карточку</button>
                </div>
            </form>
        </div>
    </div>
    <br>
    <div class="card-columns">
        <#list cards as card>
            <div class="card my-3">
                <div class="card my-3">
                    <div class="card p-1">
                        <span><b>Вопрос:</b></span>
                        <span>${card.question!}</span>
                    </div>
                    <div class="card p-1">
                        <span><b>Ответ:</b></span>
                        <i>${card.answer!}</i>
                    </div>
                    <div class="card-footer text-muted">
                        ${name!}
                    </div>
                </div>
            </div>
        <#else>
            No Card
        </#list>
    </div>
</@c.page>