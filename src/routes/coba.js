const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/add', isLoggedIn, (req, res) => {
    res.render('links/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { Nama, Alamat, Tujuan, Keperluan } = req.body;
    const newLink = {
        User_id: req.user.id,
        Nama,
        Alamat,
        Tujuan,
        Keperluan
    };
    await pool.query('INSERT INTO links SET ?', [newLink]);
    req.flash('success', 'Data BerhasilcTersimpan');
    res.redirect('/');
});
        
router.get('/', isLoggedIn, async(req, res) => {
    const links = await pool.query('SELECT * FROM links WHERE Created_at LIKE "2019-07-%%"','"%:%:%"');
    res.render('links/list', {links : links});
});

// router.get('/', isLoggedIn, async(req, res) => {
//     const links = await pool.query('SELECT * FROM links WHERE Created_at = ?', [req.user.id]);
//     res.render('links/coba', {links: links});
// });


router.get('/delete/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    await pool.query('DELETE FROM links WHERE ID = ?', [ID]);
    req.flash('success', 'Data Berhasil Dihapus');
    res.redirect('/links');
});


router.get('/edit/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const link = await pool.query('SELECT * FROM links WHERE ID = ?', [ID]);
    res.render('links/edit', {link: link[0]});
});

router.post('/edit/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const { Nama, Alamat, Tujuan, Keperluan } = req.body;
    const editedLink = {
        Nama,
        Alamat,
        Tujuan,
        Keperluan
    };
    await pool.query('UPDATE links SET ? WHERE ID = ?', [editedLink, ID]);
    req.flash('success', 'Data Berhasil Dirubah');
    res.redirect('/links');
});

module.exports = router;