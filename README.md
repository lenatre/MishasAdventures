# Misha's Adventures

## Запуск

Откройте двойным кликом `START-MISHA.bat`. Откроется окно локального сервера, а затем игра в браузере.

Не открывайте `index.html` напрямую: исходные ES-модули приложения должны загружаться через локальный сервер.

Альтернативный запуск из терминала:

```powershell
npm install
npm run dev
```

После этого откройте адрес, который появится в терминале (обычно `http://localhost:5173`).
# Misha's Adventures

## Публикация на GitHub Pages

Проект автоматически собирается и публикуется при каждом обновлении ветки `main`.

1. Создайте на GitHub репозиторий с точным именем `MishasAdventures`.
2. Загрузите проект в ветку `main`.
3. Откройте `Settings → Pages`.
4. В разделе `Build and deployment` выберите `Source: GitHub Actions`.
5. Дождитесь завершения workflow `Deploy Misha's Adventures to GitHub Pages` во вкладке `Actions`.

Игра будет доступна по адресу:

`https://ВАШ-ЛОГИН.github.io/MishasAdventures/`

Если репозиторий будет называться иначе, измените значение `base` в `vite.config.mjs`.
